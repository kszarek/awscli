FROM python:3.7.0-alpine3.8

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.10

RUN apk --no-cache --progress update && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION}

WORKDIR /data
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
