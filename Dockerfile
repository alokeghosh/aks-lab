FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------this is RED websit and jenkins CI/CD pipeline delete old image------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
