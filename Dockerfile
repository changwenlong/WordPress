FROM swr.cn-north-1.myhuaweicloud.com/root/wordpressbase:1.1

RUN mkdir -p /usr/src/wordpress 
    
ADD . /usr/src/wordpress
	
COPY docker-entrypoint.sh /usr/local/bin/

RUN chown -R www-data:www-data /usr/src/wordpress \
    && chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
