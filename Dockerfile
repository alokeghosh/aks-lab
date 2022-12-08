FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------this is RED websit and jenkins CI/CD pipeline  ONE------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
