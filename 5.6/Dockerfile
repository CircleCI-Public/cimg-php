# vim:set ft=dockerfile:

FROM cimg/base:2020.01

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PHP_VERSION 5.6.40
ENV PHP_MINOR 5.6

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
ENV COMPOSER_VERSION 1.9.1
ENV COMPOSER_SHA baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182

RUN sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	sudo php -r "if (hash_file('sha384', 'composer-setup.php') === '${COMPOSER_SHA}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	sudo php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	sudo php -r "unlink('composer-setup.php');"
