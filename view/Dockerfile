# ベースイメージの作成
FROM node:16.13.0

# アプリケーションディレクトリを作成する
WORKDIR /app/src
COPY ./ /app

# アプリケーションの依存関係をインストールする
# ワイルドカードを使用して、package.json と package-lock.json の両方が確実にコピーされるようにします。
# 可能であれば (npm@5+)
COPY package*.json ./

RUN npm install

# アプリケーションのソースをバンドルする
COPY . .

#ポート解放
EXPOSE 1324

#index.js 実行
CMD [ "node", "index.js" ]
