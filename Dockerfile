FROM node:10.10.0-slim
RUN mkdir resources 
COPY PREGUNTAS.md INTRO.md package.json /resources/