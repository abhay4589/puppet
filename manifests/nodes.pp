node rserv2	{


	package	{	'nano':	ensure	=> present	}
	
	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
	file	{	"/root/.zshrc"	: source	=> 'puppet:///files/zshrc',	}
	file	{	"/root/.tmux.conf"	: source	=> 'puppet:///files/tmux.conf',	}
	file	{	"/root/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	file	{	"/root/.bash_profile"	:	source	=>	'puppet:///files/bash_profile',	}
	file	{	"/home/$USER/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	file	{	"/home/$USER/.bash_profile"	:	source	=>	'puppet:///files/bash_profile',	}
	file	{	"/home/$USER/.vimrc"	:	source	=>	'puppet:///files/vimrc',	}
	file	{	"/home/$USER/.zshrc"	:	source	=>	'puppet:///files/zshrc',	}
	file	{	"/home/$USER/.tmux.conf"	:	source	=>	'puppet:///files/tmux.conf',	}
#		
#
#
file { "/root/.oh-my-zsh" :
	ensure => directory,
	recurse => true,
	purge => true,
	force => true,
	owner => "root",
	group => "root",
	mode => 0644,
	source => "puppet:///files/oh-my-zsh",
		
}
#
}
node puppet	inherits rserv2	{
		
	}

node suse1	inherits rserv2	{
	}

node bt	inherits	rserv2	{

$packages	= [	"nmap", "ttf-indic-fonts", "ttf-indic-fonts-core"	]
	package	{	$packages: ensure => "installed"		}
notify	{"Following $packages has been installed.":}
}

node	ubu1	inherits "rserv2" {
include ssh
$packages	= [	"nmap",  "zsh", "tmux" ]
	package	{	$packages: ensure	=> "installed"	}
notify	{"Following $packages has been installed.":}

}

node	omtechbuilds	{
	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
	file	{	"/root/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	

}

node rvya1	{
$packages = [ "nmap" ]
	 package { $packages: ensure => "installed"    }
notify  {"Following $packages has been installed.":}

}

node	storage1	{
$packages	=	[ "vim" ]
	package { $packages: ensure => "installed"    }
	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
	file	{	"/root/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	notify  {"Following $packages has been installed.":}
}

node	bsd1	{
$packages	=	[ "editors/vim","editors/nano" ]
	package { $packages: ensure => "installed",  provider	=>	"freebsd",  }
#	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
#	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
#	file	{	"/root/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
#	file	{	"/root/.bash_profile"	:	source	=>	'puppet:///files/bash_profile',	}
#	file 	{	"/root/.ssh/authorized_keys"			:	source	=> 'puppet:///files/ssh/authorized_keys',	}
	#notify  {"Following $packages has been installed.":}
}

node bsd3	inherits bsd1 {


}


node openfire {
#$packages = [ "vim","nano"  ]
#	package { $packages: ensure => "installed", provider => "openbsd", }

	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
	file	{	"/root/.zshrc"	: source	=> 'puppet:///files/zshrc',	}
	file	{	"/root/.tmux.conf"	: source	=> 'puppet:///files/tmux.conf',	}
	file	{	"/root/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	file	{	"/root/.bash_profile"	:	source	=>	'puppet:///files/bash_profile',	}
	file	{	"/home/$USER/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	file	{	"/home/$USER/.bash_profile"	:	source	=>	'puppet:///files/bash_profile',	}
	file	{	"/home/$USER/.vimrc"	:	source	=>	'puppet:///files/vimrc',	}
	file	{	"/home/$USER/.zshrc"	:	source	=>	'puppet:///files/zshrc',	}
	file	{	"/home/$USER/.tmux.conf"	:	source	=>	'puppet:///files/tmux.conf',	}

}
