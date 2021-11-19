class python_app_guillaume {

  include python_app_guillaume::python
  include python_app_guillaume::mysql_server
  include python_app_guillaume::apache2

 exec { 'test_app':
    logoutput => true,
    command => '/usr/bin/python /etc/puppetlabs/code/modules/python_app_guillaume/manifests/app.py',
  }

}
