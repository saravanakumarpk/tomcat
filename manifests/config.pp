# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat::config
class tomcat::config inherits tomcat {
      file { $::tomcat::config_path:
	        source  => 'puppet:///modules/tomcat/tomcat.conf',
		owner   =>  $::tomcat::user,
		group   =>  $::tomcat::group,
		mode    =>  '0644',
		notify  =>  Service['tomcat'],
			}
			
			
    
}
