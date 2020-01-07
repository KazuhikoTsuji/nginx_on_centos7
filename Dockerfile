FROM centos:centos7
LABEL MAINTAINER Kazuhiko Tsuji
RUN yum install -y epel-release && \
    yum install -y nginx && \
    yum upgrade -y && \
    yum clean all
ADD index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]