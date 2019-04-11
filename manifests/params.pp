# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat::params
class tomcat::params {
                $packages = [ 'tomcat', 'tomcat-webapps' ] 
		$user     = 'tomcat'
		$group    = 'tomcat'
		$service_state = running
		$service_name  = 'tomcat'
		$config_path   = '/etc/tomcat/tomcat.conf'
                $deploy_path   = '/var/lib/tomcat/webapps'
}
