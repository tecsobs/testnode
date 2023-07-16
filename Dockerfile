FROM node:18-alpine

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json /

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm", "start"]