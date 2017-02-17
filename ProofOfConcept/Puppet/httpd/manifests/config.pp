class httpd::config{  file {'/etc/httpd/conf.d/httpd.conf':
    ensure => 'present',
    source => 'puppet:///modules/httpd/myhttpd.conf'
  }
}
