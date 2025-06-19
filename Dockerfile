# Use official Node.js base image
FROM node:22

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Expose the port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
