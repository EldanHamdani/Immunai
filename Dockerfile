FROM golang:1.13
RUN mkdir /app &&\
    apt install -y git &&\
    go get github.com/go-redis/redis
ADD . /app
WORKDIR /app
RUN go build -o main . &&\
    rm main.go Dockerfile docker-compose.yml
CMD ["/app/main"]
