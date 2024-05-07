FROM python:3.8-alpine

LABEL "com.github.actions.name"="S3 Deploy"
LABEL "com.github.actions.description"="Deploy folder to AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.5.1"
LABEL repository="https://github.com/alinv0/aws-s3-deployment"
LABEL homepage="https://alinvoinea.eu/"
LABEL maintainer="Alin Voinea <mail@alinvoinea.eu>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='2.15.45'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
