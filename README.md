# ParamSigner

Sign params with a shared secret

## Installation

Install param_signer from the command line:

    $ gem install param_signer --source https://packagecloud.io/avvo/gems

or within a Gemfile:

    source 'https://packagecloud.io/avvo/gems' do
      gem 'param_signer'
    end

## Development

To push new versions of this gem to the packagecloud repo, a git commit will need to have a tag with a version number (e.g. v0.2.9). When a commit is pushed to Github with a version tag, this will trigger a CircleCI job that will build the gem, run any tests, and push the new gem version to packagecloud.


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

1. Fork it ( https://github.com/avvo/param_signer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
