FROM debian:8.11
MAINTAINER Jonathan EGA <jonathan@efashion-paris.com>

# update serveur
RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y curl

# mise en place git
RUN apt-get install -y git-core

# Installation node npm
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

# Prepare host-volume working directory
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

RUN npm install elasticsearch get-json express mysql

CMD npm start

#
EXPOSE 3000