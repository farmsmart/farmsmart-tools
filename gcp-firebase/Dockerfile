FROM google/cloud-sdk:252.0.0-slim

# Installs NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
       && apt-get install -y nodejs

# Installs firebase
RUN npm install -g firebase-tools@7.0.2

# Installs SOPS
RUN SOPS_PKG=/tmp/sops/sops.deb \
    && SOPS_SOURCE=https://github.com/mozilla/sops/releases/download/3.2.0/sops_3.2.0_amd64.deb \
    && mkdir /tmp/sops \
    && curl -L ${SOPS_SOURCE} --output ${SOPS_PKG} \
    && apt install ${SOPS_PKG} \
    && rm ${SOPS_PKG}

ENV FARMSMART_GCP_KMS projects/farmsmart-admin/locations/global/keyRings/farmsmart-admin/cryptoKeys/farmsmart

WORKDIR /farmsmart/sops

# Setup generic scripts
COPY ./scripts /farmsmart/sops