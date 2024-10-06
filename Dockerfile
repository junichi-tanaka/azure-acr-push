FROM golang:1.23-bookworm AS builder

WORKDIR /app

ADD . .

RUN go mod download
RUN go build -o main

CMD /app/main
