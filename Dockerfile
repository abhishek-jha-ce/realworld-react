FROM node:latest

# Create the working directory for the container
WORKDIR /app

# Copy package.json file into the app directory
COPY package.json .

# Install any needed packages from package.json
RUN npm Install

# Copy the rest of the files, Installed separately for optimization
COPY . .

# To start the development server
CMD ["npm", "start"]
