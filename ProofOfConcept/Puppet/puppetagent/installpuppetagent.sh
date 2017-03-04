#!/bin/bash
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum install puppet -y

yes | cp hosts /etc/hosts

yes | cp puppet.conf /etc/puppet/puppet.conf

systemctl start puppet

puppet agent -t
