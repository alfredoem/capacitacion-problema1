FROM node:10.10.0-slim
COPY package.json /
WORKDIR /
RUN npm install