FROM node:10.15.3-alpine

RUN mkdir -p /home/node/app/node_modules 
RUN chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY package*.json ./



RUN npm install -g npm@9.6.2
USER node
COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "app.js" ]


