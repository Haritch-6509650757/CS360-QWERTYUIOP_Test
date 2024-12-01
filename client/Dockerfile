# Use the official Node.js 16 image as base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the entire application source code
COPY . .

RUN yarn seed
# Expose the port your app runs on
EXPOSE 8080

# Start the app
CMD ["yarn", "start"]
