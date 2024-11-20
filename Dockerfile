# Use Node.js as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package files to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's code
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
