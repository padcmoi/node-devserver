# Use the official Node.js image from the Docker Hub
ARG NODE_VERSION=current
FROM node:${NODE_VERSION}-alpine

RUN apk add nano

RUN npm install -g nodemon pnpm

WORKDIR /app

RUN echo "Node version: $(node -v)" >/.run.file
RUN echo "dont remove this file" >>/.run.file
CMD ["tail", "-f", "/.run.file"]
