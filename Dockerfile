FROM registry.access.redhat.com/ubi8/nodejs-14-minimal:1

WORKDIR /opt/app-root/src

COPY package.json /opt/app-root/src
RUN npm install --only=prod
COPY server.js /opt/app-root/src/

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

CMD ["npm", "start"]