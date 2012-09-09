node rserv2	{


	package	{	'nano':	ensure	=> present	}
	
	file	{	'/etc/motd'	: source	=>	'puppet:///files/motd',	}

	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}
	file	{	"/root/.bashrc"	: source	=> 'puppet:///files/bashrc',	}



	}


node puppet	inherits rserv2	{
		
	}

node suse1	inherits rserv2	{
	}
