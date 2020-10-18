# specify a builder image
FROM node:alpine

# workdir
WORKDIR /app

# copy package.json
COPY package.json .

# install dependencies
RUN npm install

# copy other files
COPY . .

# run npm
RUN npm run build

########################################

# specify a base image
FROM nginx

# expose port 3000
EXPOSE 3000

# copy default.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# copy files from builder
COPY --from=0 /app/build /usr/share/nginx/html
