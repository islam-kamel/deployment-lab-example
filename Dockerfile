# Use the LTS (Long Term Support) version of Node.js as the base image
FROM node:lts-alpine as base

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN yarn install

# Copy the source code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000
