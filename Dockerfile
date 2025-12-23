# Installs the Node.js runtime and npm package manager
# Node based "base image" since this app is a Node.js app
# Alpine is a lightweight Linux distro that is used as the base image for Node.js apps
FROM node:25-alpine

# Copies the package.json and src files into the container (isolated environment from the host) at the /app/ directory
COPY package.json /app/
COPY src /app/

# Changes the working directory to /app/
WORKDIR /app/

# Installs the dependencies for the app
RUN npm install

# Runs the server.js file in the container
CMD ["node", "server.js"]