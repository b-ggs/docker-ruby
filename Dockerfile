ARG IMAGE_BASE
FROM $IMAGE_BASE

# RVM fails to install Ruby < 2.4 on Focal becuase it relies on libssl1.0-dev which is only available on Bionic
# https://github.com/rvm/rvm/issues/4764#issuecomment-527723675
# This adds the Bionic repo to install libssl1.0-dev from
ARG RUBY_MINOR
RUN [[ -n "$(cat /etc/os-release | grep VERSION_CODENAME | grep focal)" ]] \
  && [[ -n "$(echo $RUBY_MINOR | awk '{ if ($1 < 2.4) { print 1; } }')" ]] \
  && echo "deb http://security.ubuntu.com/ubuntu/ bionic-security main" > /etc/apt/sources.list.d/bionic-security.list \
  && echo 'APT::Default-Release "focal";' > /etc/apt/apt.conf.d/01-default-release \
  || true

ARG RUBY_VERSION
RUN rvm install "$RUBY_VERSION"
