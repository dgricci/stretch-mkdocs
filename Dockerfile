## Dockerfile for MkDocs
FROM dgricci/python:3.6.9
MAINTAINER Didier Richard <didier.richard@ign.fr>
LABEL       version="1.0.2" \
            mkdocs="1.1.2" \
            os="Debian Stretch" \
            description="MkDocs"

COPY build.sh /tmp/build.sh
RUN /tmp/build.sh && rm -f /tmp/build.sh

RUN mkdir /documents /site
WORKDIR /documents

# default command : prints mkdocs version and exits
CMD mkdocs --version

