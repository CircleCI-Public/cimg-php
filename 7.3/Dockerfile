# vim:set ft=dockerfile:

FROM cimg/base:2021.10

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV PHP_VERSION 7.3.32
ENV PHP_MINOR 7.3

# Install dependencies
RUN sudo apt-get update && sudo apt-get install -y \
		autoconf \
		bison \
		build-essential \
		libcurl4-openssl-dev \
		libfreetype6-dev \
		libjpeg-dev \
		libonig-dev \
		libpng-dev \
		libreadline-dev \
		libsodium-dev \
		libsqlite3-dev \
		libssl-dev \
		libtool \
		libwebp-dev \
		libxml2-dev \
		libxpm-dev \
		libzip-dev \
		re2c \
		zlib1g-dev \
	&& \
	sudo rm -rf /var/lib/apt/lists/* && \

	curl -sSL "https://www.php.net/distributions/php-${PHP_VERSION}.tar.gz" | tar -xz && \
	cd "php-${PHP_VERSION}" && \
	./buildconf && \
	./configure \
		--enable-bcmath \
		--enable-fpm \
		--enable-gd \
		--enable-intl \
		--enable-mbstring \
		--enable-pcntl \
		--enable-phpdbg \
		--enable-sockets \
		--enable-exif \
		--enable-zip \
		--with-config-file-scan-dir=/etc/php.d \
		--with-curl \
		--with-freetype \
		--with-jpeg \
		--with-mysqli=mysqlnd \
		--with-pear \
		--with-pdo-mysql=mysqlnd \
		--with-pdo-pgsql \
		--with-pdo-sqlite \
		--with-pgsql \
		--with-openssl \
		--with-readline \
		--with-sodium \
		--with-webp \
		--with-xpm \
		--with-zip \
		--with-zlib \
	&& \
	make -j $(nproc) && \
	sudo make install && \
	cd .. && \
	rm -r php-${PHP_VERSION} && \
	sudo mkdir -p /etc/php.d && \
	echo 'memory_limit = -1' | sudo tee -a /etc/php.d/circleci.ini && \
	#sudo pear config-set php_init /etc/php.d/circleci.ini && \

	# Check things are as they should be
	php --version | grep "${PHP_VERSION}" || ( echo "Error: PHP version installed is not correct." && exit 1 ) && \
	php -m | grep "gd" && \
	php -m | grep "sockets"

# Install the PHP package manager Composer
ENV COMPOSER_VERSION 2.1.12
RUN sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	sudo php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer && \
	sudo php -r "unlink('composer-setup.php');" && \
	composer --version
ENV PATH /home/circleci/.config/composer/vendor/bin:/home/circleci/.composer/vendor/bin:$PATH
