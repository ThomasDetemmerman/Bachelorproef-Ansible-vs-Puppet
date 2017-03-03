rpm -Uvh https://download.newrelic.com/pub/newrelic/el5/i386/newrelic-repo-5-3.noarch.rpm
yum install newrelic-sysmond -y


echo “=========== adding key ============“
nrsysmond-config --set license_key=9ed50a0ac1490485d0e0b6a3fb2d17babb922c0d

echo “========== starting service ========“
systemctl start newrelic-sysmond
systemctl start newrelic-sysmond

