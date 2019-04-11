# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat::service
class tomcat::service inherits tomcat {
       service { $::tomcat::service_name:
	         ensure  => $::tomcat::service_state,
		 enable  => true,
		 require => Class['tomcat::install']
			 }
	
}
