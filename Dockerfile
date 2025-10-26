FROM node:18

WORKDIR /usr/src/app

RUN npm install -g serve

COPY ./app/ .

RUN npm install && npm run build

EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "build"]