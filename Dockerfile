# Use an official Node runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install app dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Build the app (if needed)
# Uncomment the next line if you have a build step
# RUN yarn build

# Expose the port the app runs on (adjust if necessary)
EXPOSE 3000

# Define the command to run the app
CMD ["node", "server/index.js"]