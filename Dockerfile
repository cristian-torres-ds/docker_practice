# FROM: Build this image from the specified image.
FROM node:19-alpine

# COPY: Copies the files or directiories from <src> and adds them to the filesystem
#       of the container at the path <dest>
# While RUN is executed in the container. COPY is executed on the host.
COPY package.json /app/
COPY src /app/

# WORKDIR: sets the working directory for all following commands.
#          like changing into a directory: "cd ..."
WORKDIR /app

# RUN: Will excecute any command in a shell inside the container environment
RUN npm install

# CMD: The instruction that is to be executed when a docker container starts
#      There can only be one "CMD" instruction in a Dockerfile.
CMD ["node", "server.js"]