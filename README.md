# PHP Local Docker Environment
An docker image to run PHP locally as your dev environment.

# PHP versions
[7.1 Apache Image](https://github.com/caioblima/php-local-docker/tree/php-71-apache) --- Main Branch Always the latest PHP version
### Future releases ###
Separate branchs for each php version.
Suggest ideas and improvments!
# Run commands as follows:
### Outside container ###
	- Put your sites URL in your local hosts file.
 	- Put your sites *.conf on the config directory.
```bash
docker build -t caio/php71 . 
docker run -ti -p 80:80 --name php-local -v /var/www/html:/var/www/html -d caio/php71
```
### Inside container ###
***Enable your sites like you do in your local apache, inside the container***

