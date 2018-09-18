FROM node:10.10.0-alpine

#create the app directory
WORKDIR /opt/app

# Install node app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# this allows layers to be cached in docker build
# and not re-run npm install when only source code is changing.
COPY package*.json ./

RUN npm install 
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

CMD ["npm", "start"]

                                                                 