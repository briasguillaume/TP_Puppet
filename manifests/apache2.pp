# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include python_app_guillaume::apache2
class python_app_guillaume::apache2 {
  package {'apache2':
    ensure => 'present',
  }
  
  service {'apache2':
    ensure => running,
  }

}
