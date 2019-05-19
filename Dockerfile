#build image
FROM node

#create project directory
WORKDIR /usr/src/app

#copy only package.json and package-lock.json files
COPY package*.json ./

#install dependencies
RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

#bundle app source
COPY . .

#expose port
EXPOSE 3000

#run your app
CMD [ "node", "index.js" ]