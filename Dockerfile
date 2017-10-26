FROM alpine:3.5

RUN apk add --update nodejs

WORKDIR /var/www/gocd_monitor

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
