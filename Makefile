

.PHONY: install deploy

deploy:
	ssh adgl8886@fer.o2switch.net 'cd www/mediatekformation && git pull origin main && make install'

install: vendor/autoload.php   
   php bin/console cache:clear

vendor/autoload.php: composer.lock composer.json
	composer install 
	touch vendor/autoload.php