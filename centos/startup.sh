#! /bin/bash

echo "Installing Apache and setting it up"
yum -y update > /dev/null 2>&1
yum -y install httpd > /dev/null 2>&1
systemctl start httpd.service
