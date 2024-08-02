#!/bin/bash
sudo apt install -y php php-xml php-curl zip unzip
curl https://getcomposer.org/installer > composer-setup.php
php composer-setup.php 
sudo mv composer.phar /usr/local/bin/composer
composer create-project laravel/laravel example-app
hostname -I
pushd example-appphp && artisan serve --host 0.0.0.0

