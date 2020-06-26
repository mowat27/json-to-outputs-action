FROM alpine:3.11
LABEL maintainer="Adrian Mowat <adrian.mowat@gmail.com>"

RUN apk --no-cache add jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]
