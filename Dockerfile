FROM alpine:latest

EXPOSE 8080
WORKDIR /app
COPY vlogg config.json /app/
RUN chmod +x /app/vlogg
CMD /app/vlogg config.json > /dev/null 2>&1