FROM node:12.22-alpine3.15

ENV MONGO_URL=
RUN mkdir /app
WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .


EXPOSE 3000

USER node
CMD [ "node", "server.js" ]

# para crear la imagen ejecute
#sudo docker build -t mirepo/ejemplobackend:latest .