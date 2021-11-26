FROM httpd:2..4

RUN apt-get update && rm -rf index.html

COPY Redstore/ /usr/local/apache2/htdocs/

EXPOSE 8080
