FROM alpine:3.5

RUN apk add --update nodejs

WORKDIR /var/www/gocd_monitor

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
