FROM node:14

WORKDIR /home/runner/work/avni-webapp/avni-webapp

COPY package*.json ./

RUN npm install --global yarn
RUN yarn install

COPY . .

EXPOSE 6010

CMD ["yarn" , "start"]