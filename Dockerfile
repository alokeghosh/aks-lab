FROM nginx:latest
MAINTAINER Aloke Ghosh
RUN echo "-----------------This is CI/CD pipeline GitHub-jenkins-ACR-AKS--working fine 02 ------------------" > /usr/share/nginx/html/index.html
EXPOSE 80
