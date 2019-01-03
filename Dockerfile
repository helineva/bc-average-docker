FROM alpine:3.8

COPY average.sh /app/average.sh

RUN apk add --no-cache bc bash && \
    chmod a+x /app/average.sh && \
    adduser -D app

USER app

ENTRYPOINT ["/app/average.sh"]

