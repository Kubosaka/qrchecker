FROM golang:1.19.0-buster

# アップデートとgitのインストール
#RUN apk update && apk add git
#RUN apt install golang-go

# コンテナの作業ディレクトリにローカルのファイルをコピー
WORKDIR /app
COPY . /app

# 必要なパッケージをインストール
RUN go mod tidy

EXPOSE 8080
# Airをインストール
RUN go get -u github.com/cosmtrek/air && go build -o /go/bin/air github.com/cosmtrek/air
CMD ["air", "-c", ".air.toml"]
