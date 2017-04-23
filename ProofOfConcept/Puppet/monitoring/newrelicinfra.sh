#!/bin/bash

echo "license_key: 71b9436de77bf97dae3d2b9a77230843ec1111f2" | sudo tee -a /etc/newrelic-infra.yml

printf "[newrelic-infra]\nname=New Relic Infrastructure\nbaseurl=http://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64\nenable=1\ngpgcheck=0" | sudo tee -a /etc/yum.repos.d/newrelic-infra.repo

yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra'

sudo yum install newrelic-infra -y
systemctl start newrelic-infra
