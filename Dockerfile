FROM node
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -yy mongodb mongodb-server mongo-tools && apt-get dist-upgrade -yy

COPY ./init /usr/src/app/init
COPY ./server /usr/src/app/server
COPY ./client /usr/src/app/client

EXPOSE 3030
EXPOSE 8080
EXPOSE 27017
CMD [ "bash", "/usr/src/app/init" ]
