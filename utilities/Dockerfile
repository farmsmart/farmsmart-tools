FROM python:3.7-stretch

RUN apt-get update && apt-get install -y jq

WORKDIR /farmsmart

# Setup generic scripts
COPY ./scripts /farmsmart/utilities
RUN pip3 install -r /farmsmart/utilities/requirements.txt

