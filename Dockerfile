FROM golang:1.20rc3-alpine3.17

WORKDIR /app
COPY ./src /app
RUN go mod init example/hello

ENTRYPOINT [ "go", "run", "." ]