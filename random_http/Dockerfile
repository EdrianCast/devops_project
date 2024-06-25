FROM alpine:latest
RUN apk --no-cache add curl
CMD ["sh", "-c", "while true; do echo 'HTTP/1.1 200 OK\r\n\r\nHello from random_http' | nc -l -p 80; done"]