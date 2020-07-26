FROM alpine
MAINTAINER olaxe

RUN set -xe \
    apk --no-cache update && apk --no-cache upgrade \
    && apk add --no-cache ca-certificates \
                          ffmpeg \
                          openssl \
                          python3 \
                          aria2 \
    && pip3 install --upgrade pip && pip3 install youtube-dl

# Try to run it so we know it works
RUN youtube-dl --version

WORKDIR /data

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
