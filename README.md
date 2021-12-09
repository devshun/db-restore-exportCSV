## 初回準備

<br />

1. https://docs.docker.com/get-docker/ よりDocker Desktopをインストール。


<br />


2. db-restore-exportCSV リポジトリをclone。


<br />

## 操作手順

<br />

1. Docker Desktop を起動。

<br />

2. 復元したいファイルをdb-restore-exportCSV/backupディレクトリへ配置  

<br />

3. コンテナを起動。
-  data-upload ディレクトリ直下で "FILENAME=ファイル名 docker-compose up"と入力  

<br />

4. 数分後コンテナの処理が終了し、db-restore-exportCSV/outputsディレクトリ内にのCSVファイルが出力されていることを確認。 

# License
MIT
