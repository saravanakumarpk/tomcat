# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat
class tomcat inherits tomcat::params{

  include tomcat::install
  include tomcat::config
  include tomcat::service
       



}
