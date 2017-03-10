#!/bin/bash
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum install puppet-server -y

yes | cp /vagrant/puppetagent/hosts /etc/hosts

yes | cp /vagrant/puppetagent/puppet-server.conf /etc/puppet/puppet.conf

systemctl start puppetmaster

puppet agent -t
