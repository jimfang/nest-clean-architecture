# Use the official Node.js LTS (Long-Term Support) image as the base image
FROM node:lts

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy all the application files to the container
COPY . .

# Expose the port that Nest.js will run on (adjust this if your Nest.js app uses a different port)
EXPOSE 3000

# Command to start the Nest.js application (make sure your package.json has a "start" script)
CMD ["npm", "start"]