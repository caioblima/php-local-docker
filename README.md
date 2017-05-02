# PHP Local Docker Environment
An docker image to run PHP locally as your dev environment.

### Future releases ###
Separate branchs for each php version.
Suggest ideas and improvments!
# Run commands as follows:
### Outside container ###
```bash
docker build -t caio/php71 . 
docker run -ti -p 80:80 --name php-local -v /var/www/html:/var/www/html -d caio/php71
```
### Inside container ###
***Enable your sites like you do in your local apache, inside the container***
```bash
awk 'FNR==1{print '\n'}1' /usr/local/share/hosts.conf >> /etc/hosts
```