FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# Wildcard used to ensure both package.json AND package-lock.json are copied

COPY package*.json ./

RUN npm ci --only=production


# Bundle app source
COPY . .

EXPOSE 8090
CMD [ "node", "server.js" ]
