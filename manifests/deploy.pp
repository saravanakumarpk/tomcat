# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat::deploy
define tomcat::deploy(
$deploy_path = $::tomcat::deploy_path,
$deploy_url)
{
file {"${deploy_path}/${name}.war":
   source => "${deploy_url}",
   owner  => $::tomcat::user,
   group  => $::tomcat::group,
   notify => Exec['purge-context'],
   }
   
exec {'purge-context':
  path => ['/bin', '/usr/bin', '/usr/sbin'],
  command => "rm -rf ${deploy_path}/${name}",
  refreshonly => true,
  notify => Service[$::tomcat::service_name],
  }
  }
