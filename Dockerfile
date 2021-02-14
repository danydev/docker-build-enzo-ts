FROM debian:10.7

RUN apt-get update && apt-get install -y \
        ca-certificates \
        libcpprest-dev \
        libglu1 \
        libbrotli1

COPY files/enzo_ts/ /enzo_ts/

WORKDIR /enzo_ts

ENTRYPOINT ["/enzo_ts/run_headless.sh"]
