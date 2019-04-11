# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include tomcat::test
class tomcat::test inherits tomcat{
   file{'/tmp/test.conf':
   content  => template('tomcat/test.conf.erb'),
   mode      => '0644',
   owner     => $::tomcat::user,
   group     => $::tomcat::group,
   }
}
