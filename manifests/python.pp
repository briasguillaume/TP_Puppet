# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include python_app_guillaume::python
class python_app_guillaume::python {

  package { 'python3':
    ensure => present,
  }

  package { 'python3-pip':
    ensure => present,
  }

  exec { 'install-flask':
    path => '/usr/bin:/usr/sbin:/bin',
    command => 'pip3 install flask',
    require => Package[python3-pip],
  }

}
