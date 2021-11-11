# Sample

## 問題

ルートユーザのホームディレクトリに `hoge.txt` という名前のファイルを作成してください．

## 補足
- これはサンプル問題です．当日の点数とは一切関係ありません．
- 不具合などあれば，Slackで連絡いただけると助かります．
- 採点は人力のため，採点が必要な方はSlackに連絡してください．

## コマンド

- `make up`

  - コンテナを起動します．はじめにこれを実行してください．

- `make sh`
  - コンテナ上で bash を起動し，操作できるようにします．

- `make submit NAME={dockerhubのユーザ名}`
  - imageをpushします．
  ```
  tikuwa@Emma ~/c/ryuou-sample (main)> make submit NAME=supertikuwa
  "docker" stop "sample-centos"
  sample-centos
  "docker" commit "sample-centos" supertikuwa/"sample-centos"
  sha256:5f0194542f947b3e3036d5d49e2b5160858bd50c32cde5919668903195b43899
  "docker" push supertikuwa/"sample-centos"
  Using default tag: latest
  The push refers to repository [docker.io/supertikuwa/sample-centos]
  d16d952a9d5f: Pushed
  74ddd0ec08fa: Pushed
  latest: digest: sha256:1a1188ad80feeffdcf6d56150201b5daf10213d0f0f929840729b2344d6a0717 size: 741
  ```
  - 上記のように，`latest: digest:`と出力されたら`docker.io/{dockerhubのユーザ名}/sample-centos`を提出してください．


## 採点項目
- 指定したファイルが適切な場所に存在するか？
