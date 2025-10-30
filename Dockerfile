FROM     node:20
RUN      mkdir /app
RUN      useradd -d /app roboshop
RUN      chown roboshop:roboshop /app
USER     roboshop
COPY     package.json run.sh server.js /app
WORKDIR  /app
RUN      npm install
EXPOSE   8080
ENTRYPOINT ["node", "/app/server.js"]

