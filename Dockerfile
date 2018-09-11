## Dockerfile for MkDocs
FROM dgricci/python:1.0.0
MAINTAINER Didier Richard <didier.richard@ign.fr>
LABEL       version="1.0.0" \
            mkdocs="1.0.3" \
            os="Debian Stretch" \
            description="MkDocs"

COPY build.sh /tmp/build.sh
RUN /tmp/build.sh && rm -f /tmp/build.sh

RUN mkdir /documents /site
WORKDIR /documents

# default command : prints mkdocs version and exits
CMD mkdocs --version

