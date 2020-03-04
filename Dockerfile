#container image that runs your code
FROM node:12.2.0-alpine

WORKDIR /react-app

ENV PATH /react-app/node_modules/.bin:$PATH

#copies code file from repo to the filesystem
COPY /home/runner/work/automation/automation/react-app/package.json /react-app/package.json
RUN npm install --silent
RUN npm install react-scripts --silent

# start app
CMD ["npm", "start"]
