# vim:set ft=dockerfile:

FROM cimg/base:2020.09

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PHP_VERSION 7.2.34
ENV PHP_MINOR 7.2

RUN sudo add-apt-repository -y ppa:ondrej/php && \
	sudo apt-get install -y php${PHP_MINOR} php${PHP_MINOR}-dev && \
	sudo rm -rf /var/lib/apt/lists/*

# Pre-install a few very popular PHP extensions
RUN sudo apt-get update && sudo apt-get install -y \
		php$PHP_MINOR-curl \
		php$PHP_MINOR-gd \
		php$PHP_MINOR-json \
		php$PHP_MINOR-mbstring \
		php$PHP_MINOR-mysql \
		php$PHP_MINOR-xml \
		php$PHP_MINOR-zip && \
	sudo rm -rf /var/lib/apt/lists/*

# Install the PHP package manager Composer
ENV COMPOSER_VERSION 1.10.13
ENV COMPOSER_SHA 795f976fe0ebd8b75f26a6dd68f78fd3453ce79f32ecb33e7fd087d39bfeb978342fb73ac986cd4f54edd0dc902601dc

RUN sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	sudo php -r "if (hash_file('sha384', 'composer-setup.php') === '${COMPOSER_SHA}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
	sudo php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	sudo php -r "unlink('composer-setup.php');" && \
	composer --version && \
	sudo chown -R circleci:circleci ~/.composer
ENV PATH /home/circleci/.composer/vendor/bin:$PATH
