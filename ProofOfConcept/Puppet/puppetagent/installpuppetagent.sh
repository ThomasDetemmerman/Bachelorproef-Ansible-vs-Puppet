#!/bin/bash
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum install puppet -y

yes | cp /vagrant/puppetagent/hosts /etc/hosts

yes | cp /vagrant/puppetagent/puppet-agent.conf /etc/puppet/puppet.conf

systemctl start puppet

puppet agent -t
