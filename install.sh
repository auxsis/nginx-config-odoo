#!/bin/bash
echo "Please type your email address(like fabian@mauricio.re)"
read mail
echo "Please type the domain you will use(like mauricio.re)"
read domain
sudo apt update
sudo apt upgrade -y
echo 'deb http://nginx.org/packages/mainline/debian/ stretch nginx' >> /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
sudo wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
sudo apt update
sudo apt install nginx
mkdir /var/log/nginx/
apt-get install certbot python-certbot-nginx -t stretch-backports
mkdir /backup
cp /etc/nginx /backup/nginx
echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
apt-get install certbot python-certbot-nginx -t stretch-backports
cd /tmp
sed -i "s/mauricio.re/$domain/g" mauricio.re.conf
sed -i "s/mauricio.re/$domain/g" mauricio.re.conf
sed -i "s/mauricio.re/$domain/g" mauricio.re.conf
sed -i "s/mauricio.re/$domain/g" mauricio.re.conf

wget -O - https://github.com/MauricioF-cpnv/nginx-config-odoo/tarball/master


sudo apt update
sudo apt upgrade
echo 'deb http://nginx.org/packages/mainline/debian/ stretch nginx' >> /etc/apt/sources.list

sudo wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
sudo apt update
sudo apt install nginx
hostnamectl set-hostname mondomaine.ch
mkdir /var/log/nginx/
apt-get install certbot python-certbot-nginx -t stretch-backports
mkdir /backup
cp /etc/nginx /backup/nginx


echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
apt-get install certbot python-certbot-nginx -t stretch-backports
certbot certonly --webroot --agree-tos --email $mail --no-eff-email -d $domain



apt-get install fail2ban
cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

cd /etc/fail2ban
wget https://raw.githubusercontent.com/MauricioF-cpnv/nginx-config-odoo/master/jail.local

cd /etc/fail2ban/filter.d/
wget https://raw.githubusercontent.com/MauricioF-cpnv/nginx-config-odoo/master/nginx-odoo.local
wget https://raw.githubusercontent.com/MauricioF-cpnv/nginx-config-odoo/master/nginx-conn-limit.conf
wget https://raw.githubusercontent.com/MauricioF-cpnv/nginx-config-odoo/master/nginx-req-limit.conf

service fail2ban restart
fail2ban-client status
