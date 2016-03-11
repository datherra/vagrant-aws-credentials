# Vagrant Aws Credentials

This plugin intent is to serve as a bridge between any tool that follows the [AWS CLI Configuration Settings and Precedence](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#config-settings-and-precedence) and the `vagrant-aws` plugin configuration for AWS acess.

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
aws.access_key_id             = ENV["VAGRANT_AWS_ACCESS_KEY"]
aws.secret_access_key         = ENV["VAGRANT_AWS_SECRET_ACCESS_KEY"]
aws.session_token             = ENV["VAGRANT_AWS_SESSION_TOKEN"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To run this plugin with Vagrant, you need to be aware of [plugin development basics](https://www.vagrantup.com/docs/plugins/development-basics.html).

But a quick tip is to use as:

    $ bundle exec vagrant

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/vagrant-aws-credentials. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

