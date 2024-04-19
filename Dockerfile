FROM node:20.11.0-alpine3.19
WORKDIR /app
COPY . .
RUN npm install
CMD npm run start
EXPOSE 8080