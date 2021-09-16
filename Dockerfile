FROM mcr.microsoft.com/mssql/server:2017-latest

COPY ./entrypoint.sh /usr/src/entrypoint.sh
COPY ./db-restore.sh /usr/src/db-init.sh
COPY ./queries /usr/src/queries

WORKDIR /usr/src/

CMD /bin/bash ./entrypoint.sh
