FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY index.ts ./
CMD ["npm", "run", "build"]