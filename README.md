# TrueString

Collection of strings which can be translated into truth values, `true` and `false`.

```rb
"true".truthy?
"false".falsy?
"yes".truthy?
"0".falsy?
"○".truthy?
"❌".falsy?
"はい".truthy?
```

`#truthy?` returns `true` if the string can be interpreted as *true*, and returns `false` if not. `#falsy?` returns `true` if the string can be interpreted as *false*, and returns `false` if not.

An string can not return `true` for both `#truthy?` and `#falsy?`, but may return `false` for both of them.

`Object` also has `truthy?` and `falsy?`.

```rb
Object.truthy?
nil.falsy?
```

The methods returns `true` if the receiver is truthy or falsy respectively.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'true_string'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install true_string

## Contributing

1. Fork it ( https://github.com/[my-github-username]/true_string/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
