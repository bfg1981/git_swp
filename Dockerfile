FROM therealbfg/git_httpd_php

RUN apk --no-cache add php-dom php-mbstring
RUN apk --no-cache add php-openssl
RUN apk --no-cache add mercurial
RUN hg clone https://hg-public.bfgconsult.no/SimpleWebPresenter/ /var/www/localhost/php
COPY conf/*.conf /etc/apache2/conf.d/

