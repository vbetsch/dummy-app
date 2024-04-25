FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY index.js ./
CMD ["npm", "run", "start"]
