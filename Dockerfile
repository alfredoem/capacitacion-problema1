FROM node:10.10.0-slim
RUN mkdir resources 
COPY PREGUNTAS.md INTRO.md /resources/
COPY package.json /
WORKDIR /
RUN npm install