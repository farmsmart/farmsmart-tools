FROM google/cloud-sdk:252.0.0-slim

ARG FIREBASE_VERSION=7.3.1
ARG SOPS_VERSION=3.3.1

# Installs NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

# Installs firebase
RUN npm install -g firebase-tools@${FIREBASE_VERSION}

# Installs SOPS
RUN SOPS_PKG=/tmp/sops/sops.deb \
    && SOPS_SOURCE=https://github.com/mozilla/sops/releases/download/${SOPS_VERSION}/sops_${SOPS_VERSION}_amd64.deb \
    && mkdir /tmp/sops \
    && curl -sL ${SOPS_SOURCE} --output ${SOPS_PKG} \
    && apt install ${SOPS_PKG} \
    && rm ${SOPS_PKG}

ENV FARMSMART_GCP_KMS projects/farmsmart-admin/locations/global/keyRings/farmsmart-admin/cryptoKeys/farmsmart

WORKDIR /farmsmart/sops

# Setup generic scripts
COPY ./scripts /farmsmart/sops