# Use an official Ubuntu base image
FROM ubuntu:24.04

# Set non-interactive mode during the installation
ARG DEBIAN_FRONTEND=noninteractive

# Install MySQL Server
RUN apt-get update && \
    apt-get install -y mysql-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y nodejs npm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify installations
RUN node -v && npm -v && mysql --version

RUN mkdir -p /app
COPY . /app

WORKDIR /app
# COPY package*.json ./

# Install Node.js dependencies
RUN npm install
COPY startupscript.sh startupscript.sh
RUN chmod +x startupscript.sh
EXPOSE 3000
#ENTRYPOINT ["./startupscript.sh"]
CMD ["sh", "startupscript.sh"]