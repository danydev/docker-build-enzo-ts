FROM debian:10.7

RUN apt-get update && apt-get install -y \
        ca-certificates \
        libglu1 \
	librtmp1 \
	libssh2-1 \
	libpsl-dev \
	libgssapi-krb5-2 \
	libldap-2.4-2 \
        libnghttp2-14

COPY files/enzo_ts/ /enzo_ts/

WORKDIR /enzo_ts

ENTRYPOINT ["/enzo_ts/run_headless.sh"]
