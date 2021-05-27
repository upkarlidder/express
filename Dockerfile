FROM docker.io/node:14.7-alpine

WORKDIR /user-app

COPY package*.json ./
RUN npm ci --only=production


COPY server.js .

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

CMD ["npm", "start"]