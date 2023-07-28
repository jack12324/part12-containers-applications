FROM node:18

WORKDIR /usr/src/app

COPY --chown=node:node . .
RUN npm ci --only=production

ENV DEBUG=partb:*

CMD npm start