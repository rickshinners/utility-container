FROM alpine:3.17
LABEL maintainer="rickshinners@gmail.com"

RUN apk update && \
    apk add \
        bash \
        vim \
        htop \
        ncurses \
	rsync \
	util-linux \
    && rm -rf /var/cache/apk/*

COPY root /root

CMD ["/bin/bash"]
