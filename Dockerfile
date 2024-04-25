# -------------------------------------------------------
FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY index.ts tsconfig.json ./
RUN ["npm", "run", "build"]

# -------------------------------------------------------
FROM build AS development
CMD ["npm", "run", "develop"]

# -------------------------------------------------------
FROM build AS production
CMD ["npm", "run", "start"]