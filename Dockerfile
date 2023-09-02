# ベースイメージとしてNode.jsを指定
FROM node:18

# アプリケーションディレクトリを作成
WORKDIR /usr/src/app

# 依存関係のあるファイルをコピー
COPY package*.json ./

# パッケージをインストール
RUN yarn install
# または npm install も可能

# アプリケーションのソースをバンドルする
COPY . .

# アプリケーションがリッスンするポートを指定
EXPOSE 3000

# コマンドを実行
CMD [ "yarn", "start:dev" ]
