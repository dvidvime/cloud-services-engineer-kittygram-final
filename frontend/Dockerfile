FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build && npm install --global http-server

EXPOSE 8000

CMD ["npx", "-y", "http-server", "-p", "8000", "/app/build"]