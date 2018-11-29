FROM python:3.7.1-alpine3.8

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.65

RUN apk --no-cache --progress update && \
    apk --no-cache --progress add groff less && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION}

WORKDIR /data
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
