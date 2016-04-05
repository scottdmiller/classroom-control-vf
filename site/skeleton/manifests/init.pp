class skeleton { 
	file { skel :
  		ensure => directory, 
  		owner => 'root', 
  		group => 'root',
  		mode => '0755',
  		path => '/etc/skel',
 }

file { bashrc :
  ensure => file,
  owner => 'root',
  group => 'root',
  mode => '0644',
  source => 'puppet:///modules/skeleton/bashrc',
  command => '/etc/skel/.bashrc'
 }
}