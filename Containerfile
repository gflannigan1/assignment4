
FROM fedora:latest

RUN dnf -y upgrade && \
    dnf -y install tuxpaint vim httpd && \
    dnf clean all

COPY myinfo.html /var/www/html/myinfo.html

RUN systemctl enable httpd

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
