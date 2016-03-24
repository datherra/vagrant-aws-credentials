# Vagrant Aws Credentials

This plugin allows Vagrant to read your AWS Credentials, just configure which AWS profile to use.
It serves as an alternative while this [pull request](https://github.com/mitchellh/vagrant-aws/pull/441)* isn't merged to `vagrant-aws` plugin.

*_The pull request above was merged. This plugin isn't need anymore, yay \o/_
_Check vagrant-aws plugin [Quickstart session](https://github.com/mitchellh/vagrant-aws#quick-start) for instructions on how to configure this same feature on it._

I'm mainly keeping this project here to serve as reference to myself on how to develop vagrant plugins.

## Installation

    $ vagrant plugin install vagrant-aws-credentials

## Usage

Get your AWS Credentials on the standard awscli `credentials` file.
Tell `vagrant-aws-credentials` plugin which profile you're gonna use:
```
config.aws_credentials.profile = "default"
```

Config your vagrant-aws plugin on the Vagrantfile to search for secrets on the following environment variables:
```ruby
  config.aws_credentials.profile = "default"
  config.vm.provider :aws do |aws, override|

    aws.access_key_id             = ENV["VAGRANT_AWS_ACCESS_KEY"]
    aws.secret_access_key         = ENV["VAGRANT_AWS_SECRET_ACCESS_KEY"]
    aws.session_token             = ENV["VAGRANT_AWS_SESSION_TOKEN"]
    ...
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To run this plugin with Vagrant, you need to be aware of [plugin development basics](https://www.vagrantup.com/docs/plugins/development-basics.html).

But a quick tip is to use as:

    $ bundle exec vagrant

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/datherra/vagrant-aws-credentials. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

