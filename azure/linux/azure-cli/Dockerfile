FROM ubuntu:22.04

LABEL maintainer="Nishad Saithaly" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vendor="Microsoft" \
      org.label-schema.name="Azure CLI" \
      org.label-schema.description="The Azure CLI is used for all Resource Manager deployments in Azure." \
      org.label-schema.vcs-url="https://git.health.nsw.gov.au/cinsw-infrastructure/utility-container-images.git" \
      org.label-schema.docker.build.cmd="docker build -t . cinsw.azurecr.io/azure-cli:latest" \
      org.label-schema.docker.cmd="docker run -it cinsw.azurecr.io/azure-cli:latest"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Australia/Sydney
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
RUN cp /etc/apt/sources.list /etc/apt/sources.list.backup && sed -i -E "s|http://us.|http://|g" /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y ca-certificates curl apt-transport-https lsb-release gnupg jq
RUN ln -s /usr/bin/python3 /usr/local/bin/python
RUN mkdir -p /etc/apt/keyrings && curl -sLS https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/keyrings/microsoft.gpg > /dev/null && chmod go+r /etc/apt/keyrings/microsoft.gpg
RUN AZ_REPO=$(lsb_release -cs) && echo "deb [arch=`dpkg --print-architecture` signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-get update && apt-get install -y azure-cli
CMD ["bash"]