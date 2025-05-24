#!/bin/bash

echo "🔄Updating system and installing Apache..."
sudo yum update -y
sudo yum install httpd unzip -y
sudo systemctl start httpd
sudo systemctl enable httpd
:

sudo mv /home/ec2-user/setup_server.sh /var/www/html/
sudo mv /home/ec2-user/website.zip /var/www/html/

echo "💼Extracting website files..."
cd /var/www/html
sudo unzip website.zip -d /var/www/html/ 

echo "✅Setting proper ownership and permissions..."
sudo chown -R apache:apache /var/www/html/
sudo chmod -R 755 /var/www/html/

echo "💼Moving website files..."
sudo mv /var/www/html/website/index.html /var/www/html/
sudo mv /var/www/html/website/style.css /var/www/html/

echo "🔄Restarting Apache..."
sudo systemctl restart httpd

echo "👑Server setup complete!"
