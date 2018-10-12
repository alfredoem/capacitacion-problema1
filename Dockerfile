FROM node:10.10.0-slim
RUN mkdir app
RUN chmod 777 app
WORKDIR app