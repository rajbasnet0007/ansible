#!/bin/bash
cp /etc/nginx/sites-available/default /root/default-$(date +%F-%T)
cp nginx-default /etc/nginx/sites-available/default
echo "<h1 style='color:red'>Error 403 Not Authorized </h1>" | sudo tee /usr/share/nginx/html/custom_403.html
echo "<h1 style='color:red'>Error 404 Not found </h1>" | sudo tee /usr/share/nginx/html/custom_404.html
echo "<h1>Error - 500</h1>" | sudo tee /usr/share/nginx/html/custom_500.html
echo "<h1>Error - 502</h1>" | sudo tee /usr/share/nginx/html/custom_502.html
echo "<h1>Error - 503</h1>" | sudo tee /usr/share/nginx/html/custom_503.html
echo "<h1>Error - 504</h1>" | sudo tee /usr/share/nginx/html/custom_504.html
sudo systemctl reload nginx
