# Set base image
FROM node:9.3.0-alpine

# Create an environment variable for the project directory
ENV PROJECTDIRECTORY /app

# Creates the project directory
RUN mkdir $PROJECTDIRECTORY

# Sets the working directory
WORKDIR $PROJECTDIRECTORY

# Copies the package.json file to the project directory
COPY package.json $PROJECTDIRECTORY

# Download the dependencies in the copied package.json file
RUN npm install

# Copies the local directory into the project directory
COPY . $PROJECTDIRECTORY

# Exposes the specified port
EXPOSE 3000

# Command to execute (npm start)
CMD ["npm", "start"]
