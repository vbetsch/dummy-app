FROM node:20.11.0-alpine3.19
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY index.js ./
CMD ["npm", "run", "start"]
