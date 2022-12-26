FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------Welcome To AKS demo session------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
