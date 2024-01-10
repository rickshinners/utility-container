FROM alpine:3.19
LABEL maintainer="rickshinners@gmail.com"

RUN apk update && \
    apk add \
        bash \
        vim \
        htop \
        ncurses \
	rsync \
    && apk add perl-file-rename --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    && rm -rf /var/cache/apk/*

COPY root /root

CMD ["/bin/bash"]
