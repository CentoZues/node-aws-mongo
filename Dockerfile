FROM node:8.10

RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list

RUN apt-get update && apt-get install -y \
    python-dev \
    zip \
    jq \
    mongodb-org-tools=3.4.10 \
    mongodb-org-shell=3.4.10 && \
    chmod a+x /usr/bin/mongo_launch && \
    rm -rf /var/lib/apt/lists/*
    
RUN curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py
RUN pip install awscli
