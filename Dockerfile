# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /Users/arghadeep/Projects/Personal/Web/BaseWebApp 

# Copy the application files into the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install
RUN npm start

# Bundle app source
COPY . .

EXPOSE 8088
# Define the entry point for the container
CMD [ "node", "start.js" ]
