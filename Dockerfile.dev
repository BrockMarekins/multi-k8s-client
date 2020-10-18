# specify a base image
FROM node:alpine

# workdir
WORKDIR /app

# copy package.json
COPY package.json .

# install dependencies
RUN npm install

# copy other files
COPY . .

# default cmd
CMD ["npm", "run", "start"]
