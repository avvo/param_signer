# ParamSigner

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'param_signer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install param_signer

## Usage

### Get a signing key

```
signature = ParamSigner::Signer.sign({
  foo: 'bar',
  asdf: 'qwer'
}, my_secret)
```

Or, you can create an instance to reuse:

```
signer = ParamSigner::Signer.new(my_secret)
signature = signer.sign({
  foo: 'bar',
  asdf: 'qwer'
})

```

### Verify a signing key

```
ParamSigner::Signer.valid?({
  foo: 'bar',
  asdf: 'qwer'
}, my_secret, signature)
```
Or, you can create an instance to reuse:

```
signer = ParamSigner::Signer.new(my_secret)
is_valid = signer.valid?({
  foo: 'bar',
  asdf: 'qwer'
}, signature)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/param_signer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
