# Use the official Node.js 16 image as base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Install jsonwebtoken explicitly if not in package.json
RUN npm install jsonwebtoken

# Copy the entire application source code
COPY . .

#RUN yarn seed
RUN echo "Seed step skipped"

# Build the production version of the Next.js app
RUN npm run build

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
