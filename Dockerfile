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

LABEL org.opencontainers.image.authors="Kentaro Masukawa <kentaro.masukawa@mail>"

CMD ["go", "run", "server.go"]