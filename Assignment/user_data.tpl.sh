#!/bin/bash -ex 
yum -y update
yum -y install httpd
chkconfig httpd on
service httpd start
cd /var/www/html
wget http://mytestwebsitejack.s3-website-us-west-1.amazonaws.com/