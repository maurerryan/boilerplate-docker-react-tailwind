FROM node:latest

WORKDIR /node/app

COPY package.json /node/app

RUN npm install

RUN npm install axios

RUN npm install tailwindcss npm-run-all chokidar-cli

COPY . /node/app

EXPOSE 3000

CMD ["npm", "start"]