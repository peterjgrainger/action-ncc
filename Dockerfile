# Container image that runs your code
FROM node:latest

# Install the compiler from NPM (https://www.npmjs.com/)
RUN npm install -g @zeit/ncc

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
