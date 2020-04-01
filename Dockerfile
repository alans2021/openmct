FROM ubuntu:latest
RUN apt-get update -y && apt-get install sudo -y && sudo apt-get install curl -y && curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && sudo apt-get install nodejs -y && sudo apt-get install git -y && mkdir -p /usr/src/app
#FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./

COPY . .

# RUN npm install
# If you are building your code for production
RUN npm install
EXPOSE 3000
# Bundle app source
# COPY . .

CMD [ "npm", "start" ]