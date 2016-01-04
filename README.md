# Faat

[![Join the chat at https://gitter.im/xo8bit/faat](https://badges.gitter.im/xo8bit/faat.svg)](https://gitter.im/xo8bit/faat?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Gem Version](https://badge.fury.io/rb/faat.svg)](https://badge.fury.io/rb/faat) [![Code Climate](https://codeclimate.com/repos/5683d90ecbc0bf2f17002347/badges/275483f4f40ccd7c48af/gpa.svg)](https://codeclimate.com/repos/5683d90ecbc0bf2f17002347/feed) [![Test Coverage](https://codeclimate.com/repos/5683d90ecbc0bf2f17002347/badges/275483f4f40ccd7c48af/coverage.svg)](https://codeclimate.com/repos/5683d90ecbc0bf2f17002347/coverage) [![Build Status](https://travis-ci.org/xo8bit/faat.svg?branch=develop)](https://travis-ci.org/xo8bit/faat) 

Welcome to `faat` gem!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faat

## Usage

Create dir ```resources```, and files ```{model_name}_resource.rb```
Example:
```ruby
class PostResources < Faat::Resources::Base
    # your business logic put here
end
```

Initialize:
```ruby
@post = Post.new
@post_resource = PostResource.new(@post)
```

Usage:
```ruby
@post_resource.destroy  => destroy @post
@post_resource.update   => update @post

PostResource.last     => Post.last
PostResource.all      => Post.all
PostResource.where(title: "First Test Title") => Post.where(...)
```

## TODO

Add resource and form generators


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/faat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

