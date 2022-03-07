FROM golang:1.17.7-alpine

WORKDIR /app
COPY ./app /app

RUN go mod init main \
  && go mod tidy \
  && go build

ENV CGO_ENABLED=0 \
  GOOS=linux \
  GOARCH=amd64
EXPOSE 80

CMD ["go", "run", "server.go"]