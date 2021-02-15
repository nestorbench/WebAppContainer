FROM brettt89/silverstripe-web:latest
ARG NginxPath="/var/www/html"
COPY ./docker-php.conf /etc/apache2/conf-available/docker-php.conf
COPY ./index.html $NginxPath/index.html
COPY ./status/* $NginxPath/status/
RUN cut -d. -f1 /proc/uptime > $NginxPath/status/StartTime
RUN apt update

# DEV Tools 
#RUN apt install -y netcat 
#RUN apt install -y vim mlocate 
#RUN updatedb  

