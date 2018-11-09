FROM node:8
MAINTAINER Vlado Mitrovic <vlado.mitrovic@students.hevs.ch>

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
