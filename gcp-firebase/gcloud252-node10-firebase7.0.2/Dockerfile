FROM google/cloud-sdk:252.0.0-slim

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
       && apt-get install -y nodejs

RUN npm install -g firebase-tools@7.0.2
