# Use an official Node.js runtime as a base image
FROM node:14

# Create and set the working directory in the container
WORKDIR /usr/src/app

# Copy your application files to the container
COPY package*.json ./
COPY . .

# Install dependencies
RUN npm install

# Expose the port your application will run on
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
