# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy all the source code to the working directory
COPY . .

# Expose port 4000
EXPOSE 4000

# Start the Node.js application
CMD ["node", "app.js"]
