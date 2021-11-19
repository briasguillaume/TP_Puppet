# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include python_app_guillaume::mysql_server
class python_app_guillaume::mysql_server {
  package { 'mysql-server':
    ensure => installed,
  }

  service { 'mysql':
    ensure  => true,
    enable  => true,
    require => Package['mysql-server'],
  }

}
