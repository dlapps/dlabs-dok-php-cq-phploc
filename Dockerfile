FROM dreamlabs/php-composer:latest

RUN composer global require phploc/phploc && \
    ln -s /root/.composer/vendor/bin/phploc /usr/bin/phploc;

ENTRYPOINT ["phploc"]