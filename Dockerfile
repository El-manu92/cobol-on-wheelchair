FROM httpd:latest
WORKDIR /cow
RUN apt-get update && apt-get upgrade && apt-get install -qy gnucobol
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY . /cow
RUN sh downhill.sh

