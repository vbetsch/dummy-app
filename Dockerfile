FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY tsconfig.json ./
COPY index.ts ./
RUN npm run build

FROM build AS development
CMD ["npm", "run", "develop"]

FROM build AS production
RUN npm install --omit=dev
CMD ["node", "./index.js"]
