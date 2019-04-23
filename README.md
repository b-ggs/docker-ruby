# docker-ruby

💎 base image for ruby projects

## Supported tags and respective `Dockerfile` links

* `2.1.6-stretch`, `2.1.6` _(2.1.6/stretch/Dockerfile)_
* `2.1.5-stretch`, `2.1.5` _(2.1.5/stretch/Dockerfile)_
* `2.1.6-jessie`, _(2.1.6/jessie/Dockerfile)_
* `2.1.5-jessie`, _(2.1.5/jessie/Dockerfile)_

## Image Variants

### `bxggs/ruby:<version>`, `bxggs/ruby:<version>-stretch`

* Uses [bxggs/rvm:1.29.7-stretch][docker-rvm] as its base image
* Comes with the Ruby version specified by `<version>` installed via RVM

### `bxggs/ruby:2.1.6-jessie`

* Taken from [docker-library/ruby@d88c77ea84b114fdfcdaa022a4e43bb067d5ac81][docker-libary-ruby-216]

### `bxggs/ruby:2.1.5-jessie`

* Taken from [docker-library/ruby@e1ead768e3e10af1d2857943efaf30fdd943958f][docker-libary-ruby-215], with some modifications to specify Rubygems and Bundler versions

## Links

* [GitHub][github]
* [Docker Hub][dockerhub]

[docker-rvm]: https://hub.docker.com/r/bxggs/rvm
[docker-libary-ruby-216]: https://github.com/docker-library/ruby/commit/d88c77ea84b114fdfcdaa022a4e43bb067d5ac81
[docker-libary-ruby-215]: https://github.com/docker-library/ruby/commit/e1ead768e3e10af1d2857943efaf30fdd943958f
[github]: https://github.com/b-ggs/docker-ruby
[dockerhub]: https://hub.docker.com/r/bxggs/ruby
