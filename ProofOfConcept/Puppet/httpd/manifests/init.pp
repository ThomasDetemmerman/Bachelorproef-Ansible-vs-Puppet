class httpd{
  include httpd::install
  include httpd::config
  include httpd::service
}
