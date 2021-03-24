FROM ubuntu

# See https://github.com/cli/cli/blob/trunk/docs/install_linux.md
RUN apt-get update && apt-get --no-install-recommends install -y software-properties-common gnupg2 && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 && \
  apt-add-repository https://cli.github.com/packages && \
  apt-get update && \
  apt-get -y --no-install-recommends install gh && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["gh"]
