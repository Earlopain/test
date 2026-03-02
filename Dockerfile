FROM ubuntu:24.04

RUN apt-get update && apt-get install -y build-essential ruby git curl build-essential autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN RUBY_DEV_REPO=https://github.com/ruby/ruby.git RUBY_DEV_REF=master@b92f1d1 ~/.rbenv/plugins/ruby-build/bin/ruby-build ruby-dev path/to/install
