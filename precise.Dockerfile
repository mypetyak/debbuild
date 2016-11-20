FROM ubuntu:precise
MAINTAINER Christopher Bunn

RUN apt-get update && apt-get install -y \
    debhelper \
    devscripts \
    dh-exec \
    git

# mount the package working directory into the
# container with -v <working_dir>:/pkg
RUN mkdir /pkg
RUN mkdir /build

ADD build.sh /build.sh

WORKDIR /build

ENTRYPOINT /build.sh
