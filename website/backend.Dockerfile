# Backend Dockerfile
FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

COPY . .

CMD ["sh", "-c", "if [ $SEED_DB ]; then node seedDB.js; fi && node app.js"]

EXPOSE 3000

CMD ["node", "app.js"]