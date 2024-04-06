# About this repository
I have created a Dockerfile that generates a PHP FPM image that contains all
the necessary pieces to manage a Drupal 10 site.

## Creating your image
Clone this repository.

Run `docker build -t your_repo:your_tag`

## Running a container
Run `docker container run -d --name your-container-name --network your-network -p 9000:9000 --mount type=bind,source=/path/to/your/code,target=/your/target/path --mount type=bind,source=/path/to/your/custom/php-settings/your-php.ini,target=/usr/local/etc/php/conf.d/your-php.ini your_repo:your_tag`

## Using the container
I have installed composer in the container so that you don't have to install composer on the host.

Run `docker exec -it your-container-name /bin/sh`

Run `cd /your/target/path`

Run `composer install`

I have also installed vim in the container so that you can edit
environment-specific things, such as a secrets.env file. Let's say that you
have /your/target/path/docker/docker-compose.yml. You could
`vim /your/target/path/docker/secrets.env`
