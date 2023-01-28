FROM golang:1.20rc3-alpine3.17 as builder

WORKDIR /app
COPY ./src /app
RUN go mod init example/hello
RUN go build hello.go

FROM scratch

WORKDIR /app
COPY --from=builder /app/hello .
ENTRYPOINT [ "./hello" ]