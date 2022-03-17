FROM node:16

WORKDIR /project

COPY . /project
COPY package.16.4.2.json /project/package.json

RUN npm install

CMD ["npm", "test"]