FROM debian:bookworm

RUN apt-get update && apt-get install -y build-essential ruby git curl autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN RUBY_REPO=https://github.com/ruby/ruby.git RUBY_REF=master@1298f9ac1a ~/.rbenv/plugins/ruby-build/bin/ruby-build ruby-dev path/to/install
