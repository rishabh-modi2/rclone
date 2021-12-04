FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install python -y \
        swig \
        nodejs \
        npm \
        python-dev \
        libssl-dev \
    && rm -rf /var/lib/apt/lists/*
COPY package*.json ./
COPY . .
RUN npm install

CMD [ "node", "server.js" ]
