# vim:set ft=dockerfile:

FROM cimg/base:2019.11

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PHP_VERSION 7.3.12
ENV PHP_MINOR 7.3

RUN add-apt-repository -y ppa:ondrej/php && \
	apt-get install -y php${PHP_MINOR} php${PHP_MINOR}-dev && \
	rm -rf /var/lib/apt/lists/*

# Pre-install a few very popular PHP extensions
RUN apt-get update && apt-get install -y \
		php$PHP_MINOR-curl \
		php$PHP_MINOR-gd \
		php$PHP_MINOR-json \
		php$PHP_MINOR-mysql && \
	rm -rf /var/lib/apt/lists/*

# Install the PHP package manager Composer
ENV COMPOSER_VERSION 1.9.1
ENV COMPOSER_SHA a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1
ENV COMPOSER_ALLOW_SUPERUSER=1

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php -r "if (hash_file('sha384', 'composer-setup.php') === '${COMPOSER_SHA}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	php -r "unlink('composer-setup.php');"

WORKDIR /root/project
