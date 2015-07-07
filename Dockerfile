FROM ubuntu-debootstrap
MAINTAINER Neale Swinnerton <neale@mastodonc.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -qq -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq -y rubygems-integration gcc make patch ruby-dev zlib1g-dev && \
    DEBIAN_FRONTEND=noninteractive apt-get clean -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get autoclean -qq

RUN gem install riemann-tools

CMD ["/usr/bin/riemann-health" "--host" "10.101.0.99"]
