#!/bin/bash
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum install puppet -y
yes | cp /vagrant/puppetconfiguration/hosts /etc/hosts
yes | cp /vagrant/puppetconfiguration/puppet-agent.conf /etc/puppet/puppet.conf
systemctl start puppet

#puppet agent -t
