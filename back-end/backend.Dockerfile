# Backend Dockerfile
FROM node:18-alpine

WORKDIR /usr/src/app


COPY package*.json ./
RUN npm install --production


COPY . .


EXPOSE 3000

# Command to seed the database
# RUN node seedDB.js

CMD ["node", "app.js"]