# Use Node.js base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN npm install

# Update Browserslist
RUN npx browserslist@latest --update-db

# Install Babel
RUN npm install --save-dev @babel/core @babel/cli

# Expose port (assuming your frontend runs on port 3000)
EXPOSE 3000

# Command to start the frontend server
CMD ["npm", "run", "start:prod"]
