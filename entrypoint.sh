#!/bin/bash
set -xe

if [[ ! -d "/var/www/html/src" ]]
then
	mkdir /var/www/html/src	
	cd /var/www/html/src
	install-magento2 2.2 || echo "Ingore warnings"
fi
apache2-foreground

