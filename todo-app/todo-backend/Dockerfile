FROM node:19

WORKDIR /usr/src/app

COPY --chown=node:node . .
RUN npm ci --only=production

ENV DEBUG=todo-express-backend:*

CMD npm start