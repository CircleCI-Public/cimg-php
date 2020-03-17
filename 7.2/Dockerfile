# vim:set ft=dockerfile:

FROM cimg/base:2020.03

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PHP_VERSION 7.2.29
ENV PHP_MINOR 7.2

RUN sudo add-apt-repository -y ppa:ondrej/php && \
	sudo apt-get install -y php${PHP_MINOR} php${PHP_MINOR}-dev && \
	sudo rm -rf /var/lib/apt/lists/*

# Pre-install a few very popular PHP extensions
RUN sudo apt-get update && sudo apt-get install -y \
		php$PHP_MINOR-curl \
		php$PHP_MINOR-gd \
		php$PHP_MINOR-json \
		php$PHP_MINOR-mysql && \
	sudo rm -rf /var/lib/apt/lists/*

# Install the PHP package manager Composer
ENV COMPOSER_VERSION 1.10.1
ENV COMPOSER_SHA e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a

RUN sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	sudo php -r "if (hash_file('sha384', 'composer-setup.php') === '${COMPOSER_SHA}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	sudo php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	sudo php -r "unlink('composer-setup.php');"
