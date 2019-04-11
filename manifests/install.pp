# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat::install
class tomcat::install inherits tomcat {
       package{ $::tomcat::packages:
	        ensure  => installed,
			}
			
}
