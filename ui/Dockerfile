FROM node:14.8.0-alpine
WORKDIR /app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
CMD ["npm","start"]