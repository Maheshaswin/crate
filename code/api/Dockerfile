# Use Node.js as base image
FROM node:16

# Set working directory
WORKDIR /usr/src/api

# Copy package.json and package-lock.json to work directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application
COPY . .

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["npm", "start"]
