#!/bin/bash
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum install puppet-server -y


yes | cp /vagrant/puppetconfiguration/hosts /etc/hosts

yes | cp /vagrant/puppetconfiguration/puppet-server.conf /etc/puppet/puppet.conf

yes | cp /vagrant/PuppetMaster/manifests/* /etc/puppet/manifests/ -r

yes | cp /vagrant/PuppetMaster/modules/* /etc/puppet/modules/ -r

puppet resource service puppetmaster ensure=running
