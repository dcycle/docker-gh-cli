FROM alpine

# See https://github.com/cli/cli/blob/trunk/docs/install_linux.md
RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk add github-cli@community

ENTRYPOINT ["gh"]
