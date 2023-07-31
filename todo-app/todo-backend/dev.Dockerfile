FROM node:19

WORKDIR /usr/src/app

COPY . .

RUN npm install

ENV DEBUG=todo-express-backend:*

ENV REDIS_URL='//redis:6379'
ENV MONGO_URL="mongodb://the_username:the_password@mongo:27017/the_database"

CMD ["npm", "run", "dev"]
