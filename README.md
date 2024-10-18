# Void Method

A simple gem for a method that always returns void.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'void_method', '~> 1.0'
```

And then execute:

```bash
$ bundle
```

Or you can install the gem on its own:

```bash
gem install void_method
```

## Usage

Call the `void` method to declaratively execute code and return `nil`:

```ruby
void do
  # some code that returns a value to be ignored
end
# => nil
```

The block is passed the receiver of `void` as parameter, so it can be used like `tap` and `then`.

If `Kernel#void` is already defined, the gem raises an exception. 

## Version numbers

Void Method loosely follows [Semantic Versioning](https://semver.org/), with a hard guarantee that breaking changes to the public API will always coincide with an increase to the `MAJOR` number.

Version numbers are in three parts: `MAJOR.MINOR.PATCH`.

- Breaking changes to the public API increment the `MAJOR`. There may also be changes that would otherwise increase the `MINOR` or the `PATCH`.
- Additions, deprecations, and "big" non breaking changes to the public API increment the `MINOR`. There may also be changes that would otherwise increase the `PATCH`.
- Bug fixes and "small" non breaking changes to the public API increment the `PATCH`.

Notice that any feature deprecated by a minor release can be expected to be removed by the next major release.

## Changelog

Full list of changes in [CHANGELOG.md](CHANGELOG.md)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/moku-io/void_method.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
