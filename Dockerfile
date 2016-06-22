FROM debian:jessie
MAINTAINER Elifarley Cruz <elifarley@gmail.com>
ENV \
  BASE_IMAGE=debian:jessie \
  JAVA_VERSION=8 \
  JAVA_UPDATE=92 \
  JAVA_BUILD=14

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates curl && \
  curl -fsSL https://raw.githubusercontent.com/elifarley/cross-installer/master/install.sh | sh && \
  xinstall save-image-info && \
  xinstall install jdk-8-nodesktop && \
  xinstall cleanup
