FROM node:0.10.48-slim

COPY . /app
WORKDIR /app

RUN apt update && apt install -qqy python git

RUN mkdir /home/node
RUN chown node:node /home/node
RUN chown node:node -R .
USER node

RUN npm install 

EXPOSE 8070
ENTRYPOINT "./server"
