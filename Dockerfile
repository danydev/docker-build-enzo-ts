FROM debian:10.3

RUN apt-get update && apt-get install -y \
        ca-certificates \
        libcpprest-dev \
        libglu1 \
        libbrotli1

COPY files/enzo_ts/ /enzo_ts/

WORKDIR /enzo_ts

ENTRYPOINT ["/enzo_ts/bin/enzo_tsl", "--noui", "--low_memory_mode"]
