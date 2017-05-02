# php-local-docker
An docker image to run PHP locally as your dev environment.

enable your sites
docker build -t caio/php71 .
docker run -ti -p 80:80 --name php-local -v /var/www/html:/var/www/html -d caio/php71
awk 'FNR==1{print '\n'}1' /usr/local/share/hosts.conf >> /etc/hosts