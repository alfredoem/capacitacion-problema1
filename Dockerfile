FROM node:10.11-slim
RUN mkdir /app
COPY PREGUNTAS.md /app
RUN ls /app
RUN cat /app/PREGUNTAS.md
