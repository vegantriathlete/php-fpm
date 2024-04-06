# About this repository
I have created a Dockerfile that generates a PHP FPM image that contains all
the necessary pieces to manage a Drupal 10 site.

## Creating your image
Clone this repository.
Run `docker build -t your_repo:your_tag`

## Running a container
Run `docker container run -d --name your-container-name --network your-network -p 9000:9000 --mount type=bind,source=/path/to/your/code,target=/your/target/path --mount type=bind,source=/path/to/your/custom/php-settings/your-php.ini,target=/usr/local/etc/php/conf.d/your-php.ini your_repo:your_tag`
