FROM httpd:2.4
COPY ./index.html /usr/local/apache2/htdocs/
ENV PORT = 3000
EXPOSE $PORT
