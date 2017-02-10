FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.1

RUN gem install extlz4 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["extlz4"]
CMD ["--help"]
