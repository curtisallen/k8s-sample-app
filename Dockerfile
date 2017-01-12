FROM node:6.9-alpine
RUN apk update && apk upgrade
CMD apk add --upgrade bash
EXPOSE 8080
COPY server.js .
CMD node server.js
