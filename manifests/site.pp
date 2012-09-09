import 'nodes.pp'

node	default	{
	package {	'nmap'	: ensure	=> installed,	}
	package {	'screen'	: ensure	=> installed,	}

	file	{	'/etc/motd'	:	source	=> 'puppet:///files/motd',	}
	

}
