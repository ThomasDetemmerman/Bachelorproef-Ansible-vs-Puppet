#!/bin/bash

echo "license_key: 9ed50a0ac1490485d0e0b6a3fb2d17babb922c0d" | sudo tee -a /etc/newrelic-infra.yml

printf "[newrelic-infra]\nname=New Relic Infrastructure\nbaseurl=http://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64\nenable=1\ngpgcheck=0" | sudo tee -a /etc/yum.repos.d/newrelic-infra.repo

yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra'

sudo yum install newrelic-infra -y
systemctl start newrelic-infra

