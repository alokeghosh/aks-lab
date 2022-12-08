FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------this is RED websit and jenkins CI/CD pipeline After build and deploy, delete the image to cleanup your server space.------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
