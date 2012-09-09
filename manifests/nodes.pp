node rserv2	{


	package	{	'nano':	ensure	=> present	}
	
	file	{	"/etc/motd"		:	source	=> 'puppet:///files/motd',	}
	file	{	"/root/.vimrc"	: source	=> 'puppet:///files/vimrc',	}



	}


node puppet	inherits rserv2	{
		
	}

node suse1	inherits rserv2	{
	}
