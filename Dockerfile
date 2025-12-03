FROM registry.access.redhat.com/ubi9/nodejs-18:latest

WORKDIR /opt/app-root/src

COPY package*.json ./
RUN npm install --production --unsafe-perm

COPY . .

EXPOSE 8080
CMD ["npm", "start"]
