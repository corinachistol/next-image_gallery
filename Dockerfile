FROM node:18-alpine

RUN npm install -g nodemon

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

COPY .next ./.next

CMD ["npm", "run", "dev"]


