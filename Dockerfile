# Container image that runs your code
FROM alpine:3.10

COPY . .

WORKDIR /

# Give permission to execute the entrypoint.sh
RUN chmod +x entrypoint.sh

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]