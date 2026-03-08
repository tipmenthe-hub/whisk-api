FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build 2>/dev/null || true

EXPOSE 8000

ENV PORT=8000

CMD ["node", "src/server.js"]
