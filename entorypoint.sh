# 確認用ログを出力
 ./db-restore.sh >> /var/opt/mssql/backup/log.txt 2>&1 & /opt/mssql/bin/sqlservr
