# Use an official Node.js runtime as a parent image
FROM public.ecr.aws/docker/library/node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]


