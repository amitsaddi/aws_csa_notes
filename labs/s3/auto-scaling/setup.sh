#!/bin/bash
yum install httpd -y
yum update -y
chkconfig httpd on
service httpd start

cd /var/www/html/

echo '<!DOCTYPE html>' > index.html
echo '<html>'  >> index.html
echo '  <head>'>> index.html
echo '    <meta charset="utf-8">'>> index.html
echo '    <title>Example</title>'>> index.html
echo '  </head>' >> index.html
echo '  <body>' >> index.html
echo '    <h1>Hello</h1>' >> index.html
echo '    <p>' >> index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> index.html
echo '    ' >> index.html
curl http://169.254.169.254/latest/meta-data/hostname >> index.html
echo '    </p>' >> index.html
echo '  </body>' >> index.html
echo '</html>' >> index.html
