node rserv2	{


	package	{	'nano':	ensure	=> present	}
	
	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
	file	{	"/root/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	file	{	"/home/$USER/.bashrc"	:	source	=>	'puppet:///files/bashrc',	}
	file	{	"/home/$USER/.vimrc"	:	source	=>	'puppet:///files/vimrc',	}
	file	{	"/home/abhay/.vimrc"	:	source	=>	'puppet:///files/vimrc',	}
	file	{	"/etc/resolv.conf"	:	source	=>	'puppet:///files/resolv.conf.generic',	}


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

node	ubuntu	inherits	rserv2	{
$packages	= [	"nmap", "ssh"]
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
