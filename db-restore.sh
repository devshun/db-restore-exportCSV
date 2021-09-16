/bin/sleep 25s

touch /var/opt/mssql/data/sampledb.mdf
touch /var/opt/mssql/data/sampledb_Log.ldf

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P password -Q "RESTORE DATABASE sampledb FROM DISK = '/var/opt/mssql/backup/sampledb.bak' WITH  FILE = 1, STATS = 5, REPLACE, MOVE 'sampledb' TO '/var/opt/mssql/data/sampledb.mdf', MOVE 'sampledb_Log' TO '/var/opt/mssql/data/sampledb_Log.ldf'"

/bin/sleep 10s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P password -i /usr/src/queries/exportCSV.sql -o /usr/src/outputs/sample.csv