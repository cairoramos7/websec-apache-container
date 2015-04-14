###################################################
# Docker image of an Apache httpd 2.4 installation
# for use in the WebSec course lab.
#
# This image is not intended for production use!
#
# Christoph Ludwig, 2015
#
FROM httpd:2.4.12

#
# copy statically served files into the image
#
ENV HTDOCS_PREFIX /var/www/
RUN rm -rf "$HTDOCS_PREFIX" \
    && mkdir -p "$HTDOCS_PREFIX" 
COPY ./htdocs/ /var/www/
RUN chown -R www-data:www-data "$HTDOCS_PREFIX"

#
# make sure /var/log/apache2/ exists and is empty
#
ENV HTTPD_LOG_DIR /var/log/apache2
RUN rm -rf $HTTPD_LOG_DIR \
    && mkdir -p $HTTPD_LOG_DIR \
    && chown root:root $HTTPD_LOG_DIR

#
# copy httpd configuration into the image
#
WORKDIR $HTTPD_PREFIX
RUN rm -rf conf/*
COPY ./conf/ conf/

EXPOSE 80 443

