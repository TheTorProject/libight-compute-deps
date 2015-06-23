#!/bin/sh -e
# Clone specific tags from github and update local copy

get() {
  git clone https://github.com/$1 tmp/$1
  (cd tmp/$1 && git checkout $2)
  (cd tmp/$1 && git archive --prefix=$3/ HEAD) | (cd libight-deps && tar -xf-)
}

rm -rf tmp/*
get philsquared/Catch c51e86819dc99 Catch
get boostorg/assert boost-1.58.0 boost/assert
get boostorg/config boost-1.58.0 boost/config
get measurement-kit/measurement-kit-boost-core stable boost/core
get boostorg/detail boost-1.58.0 boost/detail
get boostorg/iterator boost-1.58.0 boost/iterator
get boostorg/mpl boost-1.58.0 boost/mpl
get boostorg/predef boost-1.58.0 boost/predef
get boostorg/preprocessor boost-1.58.0 boost/preprocessor
get boostorg/smart_ptr boost-1.58.0 boost/smart_ptr
get boostorg/static_assert boost-1.58.0 boost/static_assert
get boostorg/throw_exception boost-1.58.0 boost/throw_exception
get boostorg/type_traits boost-1.58.0 boost/type_traits
get boostorg/typeof boost-1.58.0 boost/typeof
get boostorg/utility boost-1.58.0 boost/utility
get joyent/http-parser v2.5.0 http-parser
get libevent/libevent release-2.0.22-stable libevent
get jbeder/yaml-cpp b426fafff6238dda8d yaml-cpp
