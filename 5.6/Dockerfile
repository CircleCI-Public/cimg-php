# vim:set ft=dockerfile:

FROM cimg/base:2020.05

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
ENV COMPOSER_VERSION 1.10.6
ENV COMPOSER_SHA e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")" && \
	if [ "$COMPOSER_SHA" != "$ACTUAL_CHECKSUM" ]; \
	then \
		>&2 echo 'ERROR: Invalid installer checksum'; \
		rm composer-setup.php; \
		exit 1; \
	fi && \
	sudo php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	RESULT=$? && \
	rm composer-setup.php && \
	sudo chown $(whoami):$(whoami) $HOME/.composer && \
	exit $RESULT
