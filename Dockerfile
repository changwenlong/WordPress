FROM 100.125.0.198:20202/n1/wordpressbase:1.1

ENV WORDPRESS_VERSION 4.9.4
ENV WORDPRESS_SHA1 0e630bf940fd586b10e099cd9195b3e825fb194c

RUN mkdir -p /usr/src/wordpress \
    && chown -R www-data:www-data /usr/src/wordpress
ADD . /usr/src/wordpress
	
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
