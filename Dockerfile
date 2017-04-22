FROM node:0.10.48-slim

RUN apt update && apt install -qqy python git

COPY . /app
WORKDIR /app

RUN mkdir /home/node
RUN chown node:node /home/node
RUN chown node:node -R .
USER node

RUN npm install 

EXPOSE 8070
ENTRYPOINT "./server"
