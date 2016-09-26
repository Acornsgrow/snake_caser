[![Code Climate](https://codeclimate.com/github/Acornsgrow/snake_caser/badges/gpa.svg)](https://codeclimate.com/github/Acornsgrow/snake_caser)
[![Test Coverage](https://codeclimate.com/github/Acornsgrow/snake_caser/badges/coverage.svg)](https://codeclimate.com/github/Acornsgrow/snake_caser/coverage)
[![Issue Count](https://codeclimate.com/github/Acornsgrow/snake_caser/badges/issue_count.svg)](https://codeclimate.com/github/Acornsgrow/snake_caser)

# SnakeCaser

A simple Ruby library that provides snake casing functionality.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snake_caser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snake_caser

## Usage

The following example describes the basic usage.

```ruby
SnakeCaser.lower_snake_case("CAPITAL STRING") # => "capital_string"
```

Various examples of different scenarios can be seen below. For further details
you can look at the
[spec/snake_caser_spec.rb](https://github.com/Acornsgrow/snake_caser/blob/master/spec/snake_caser_spec.rb)
file.

```ruby
SnakeCaser.lower_snake_case("lower case") # => "lower_case"
SnakeCaser.lower_snake_case("SomeString WithSpaces") # => "some_string_with_spaces"
SnakeCaser.lower_snake_case("someString withSpaces") # => "some_string_with_spaces"
SnakeCaser.lower_snake_case("SOME_STRING WITH_SPACES") # => "some_string_with_spaces"
SnakeCaser.lower_snake_case("some_string with_spaces") # => "some_string_with_spaces"
SnakeCaser.lower_snake_case("LOTRFan TNGFan") # => "lotr_fan_tng_fan"
SnakeCaser.lower_snake_case("Some String3") # => "some_string3"
SnakeCaser.lower_snake_case("Some/ Str;ing") # => "some__str_ing"
SnakeCaser.lower_snake_case("CAPITAL") # => "capital"
SnakeCaser.lower_snake_case("lowercase") # => "lowercase"
SnakeCaser.lower_snake_case("SomeString") # => "some_string"
SnakeCaser.lower_snake_case("someString") # => "some_string"
SnakeCaser.lower_snake_case("Some_String") # => "some_string"
SnakeCaser.lower_snake_case("some_string") # => "some_string"
SnakeCaser.lower_snake_case("LOTRFan") # => "lotr_fan"
SnakeCaser.lower_snake_case("SomeString3") # => "some_string3"
SnakeCaser.lower_snake_case("Some/Str;ing") # => "some_str_ing"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

### Run Tests

```
bundle exec rake
```

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/Acornsgrow/snake_caser. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to adhere
to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

