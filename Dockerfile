FROM node:8-alpine

WORKDIR /var/www/gocd_monitor

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
