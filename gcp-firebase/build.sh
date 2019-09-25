#!/bin/bash
set -euo pipefail

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

IMAGE_VERSION=${1}
FIREBASE_VERSION=${2}
SOPS_VERSION=${3}

tag_base="farmsmart/gcp-firebase"
version_tag="${tag_base}:${IMAGE_VERSION}"
latest_tag="${tag_base}:latest"

docker build ${dir} \
-t ${version_tag} \
-t ${latest_tag} \
--build-arg FIREBASE_VERSION=${FIREBASE_VERSION} \
--build-arg SOPS_VERSION=${SOPS_VERSION}

docker push ${version_tag}
docker push ${latest_tag}
