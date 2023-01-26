注意事項

起動順序
まずdbコンテナを立ち上げる
docker compose up db -d 
立ち上がったら
docker compose up

もしくは
make run

dbの接続がうまくいかない場合
api/main.go を開き、ctrl+sで保存する

main.goのimportエラーはvscodeのパス関係の不具合であり、問題はない.
ターミナルでapiディレクトリに入って、code .すると消える


IPアドレス
コンテナ:0.0.0.0

使用ポート番号
db
コンテナ: 3306
ローカル: 3306
api
コンテナ: 1323
ローカル: 1323
view
コンテナ: 8000
ローカル: 8000

