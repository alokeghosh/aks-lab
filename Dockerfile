FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------this is RED websit and jenkins CI/CD pipeline 1------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
