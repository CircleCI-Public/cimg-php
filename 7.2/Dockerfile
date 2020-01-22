# vim:set ft=dockerfile:

FROM cimg/base:2020.01

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PHP_VERSION 7.2.27
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
ENV COMPOSER_VERSION 1.9.2
ENV COMPOSER_SHA c5b9b6d368201a9db6f74e2611495f369991b72d9c8cbd3ffbc63edff210eb73d46ffbfce88669ad33695ef77dc76976

RUN sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	sudo php -r "if (hash_file('sha384', 'composer-setup.php') === '${COMPOSER_SHA}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	sudo php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	sudo php -r "unlink('composer-setup.php');"
