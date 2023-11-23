# Use an official Node.js runtime as a parent image
FROM node:21

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the local code to the container
COPY . .

# Build the app
RUN npm run dev

# Expose the port that your app will run on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"]

