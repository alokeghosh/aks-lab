FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------$$$jenkins CI/CD pipeline After build and puse image ACR and depoly in AKS$$$------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
