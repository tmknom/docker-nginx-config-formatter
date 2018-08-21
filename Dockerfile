FROM python:3.7.0-alpine3.8

RUN set -x && \
    apk --update add git openssh && \
    git clone https://github.com/1connect/nginx-config-formatter.git && \
    mv /nginx-config-formatter/nginxfmt.py /usr/bin/nginxfmt && \
    rm -rf /nginx-config-formatter && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

CMD ["/bin/sh"]
