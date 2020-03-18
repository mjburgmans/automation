#container image that runs your code
FROM node:12.2.0-alpine

WORKDIR /react-app

ENV PATH /react-app/node_modules/.bin:$PATH

#copies code file from repo to the filesystem
COPY package.json ./package.json
COPY index.html ./index.html
RUN npm install --silent
RUN npm install react-scripts --silent

# start app
CMD ["npm", "start"]
