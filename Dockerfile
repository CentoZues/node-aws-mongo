FROM node:8

RUN apt-get update && apt-get install -y \
    python-dev \
    zip \
    jq \
    apt-get install -y mongodb-org-shell \
    mongodb-org-tools
    
RUN curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py
RUN pip install awscli
