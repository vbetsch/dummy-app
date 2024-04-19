FROM node:20.11.0-alpine3.19
WORKDIR /app
COPY . .
RUN npm install
CMD npm run start
ENV PORT=1337
EXPOSE 1337
