#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
systemctl start httpd
systemctl enable httpd
sudo yum install wget -y
cd /var/www/html
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page148/aviation-school.zip
sudo unzip aviation-school.zip
sudo rm -rf aviation-school.zip
sudo cp -r aviation-school/* .
sudo rm -rf aviation-school
