FROM node:18-alpine

RUN mkdir /app
WORKDIR /app

ENV PATH /node_modules/.bin:$PATH

COPY package*.json /

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm", "start"]