FROM alpine:latest

EXPOSE 8080
WORKDIR /app

RUN apk add --no-cache ca-certificates bash curl 

RUN curl -L -O  https://github.com/axxboy/vlogg/releases/download/v0.1.0/vlogg-linux-amd64.tar.gz && \
    tar xzf vlogg-linux-amd64.tar.gz && \
    chmod +x vlogg && \
    rm vlogg-linux-amd64.tar.gz

COPY  config.json /app/
CMD /app/vlogg config.json > /dev/null 2>&1