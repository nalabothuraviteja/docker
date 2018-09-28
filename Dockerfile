FROM ubuntu
WORKDIR /home/ubuntu
RUN apt-get update
RUN apt-get install apache2 -y && apt-get install git -y && apt-get install nginx -y
MAINTAINER ravi
EXPOSE 80
LABEL teja=ravi
CMD ["apache2-foreground"]
ENV pkg=httpd
VOLUME /var/lib
ADD https://github.com/nalabothuraviteja/morning.git /val/lib
CMD ["python"]
