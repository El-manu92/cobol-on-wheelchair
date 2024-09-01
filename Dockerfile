FROM httpd:latest
WORKDIR /cow
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -qy gnucobol make
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY . /cow
RUN make -f downhill all