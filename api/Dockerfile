# Use the official Node.js 16 image as base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application source code
COPY . .

# Seed database or initial data (optional)
RUN npm run seed

# Build the production version of the app
RUN npm run build

# Expose the port your app runs on
EXPOSE 1337

# Start the app
CMD ["npm", "run", "start"]
