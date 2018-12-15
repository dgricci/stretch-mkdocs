## Dockerfile for MkDocs
FROM dgricci/python:3.6.6
MAINTAINER Didier Richard <didier.richard@ign.fr>
LABEL       version="1.0.1" \
            mkdocs="1.0.4" \
            os="Debian Stretch" \
            description="MkDocs"

COPY build.sh /tmp/build.sh
RUN /tmp/build.sh && rm -f /tmp/build.sh

RUN mkdir /documents /site
WORKDIR /documents

# default command : prints mkdocs version and exits
CMD mkdocs --version

