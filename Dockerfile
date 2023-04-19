# Use an official Node.js base image with a specific version
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the desired port for the application to listen on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
