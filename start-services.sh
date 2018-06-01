#!/bin/bash

if ps ax | grep -v grep | grep 'php-fpm' > /dev/null
then
echo 'FPM is running'
else
sudo service php7.2-fpm start
fi

if ps ax | grep -v grep | grep 'nginx' > /dev/null
then
echo 'Nginx is running'
else
sudo service nginx start
fi

if ps ax | grep -v grep | grep 'mysql' > /dev/null
then
echo ‘MySQL is running’
else
sudo service mysql start
fi
