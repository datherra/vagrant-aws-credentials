source 'https://rubygems.org'

# Specify your gem's dependencies in vagrant-aws-credentials.gemspec
gemspec

group :development do
  gem "vagrant", git: "https://github.com/mitchellh/vagrant.git"
  gem "bundler", "<= 1.10.6", ">= 1.5.2"
end

group :plugins do
  gem "vagrant-aws-credentials", path: "."
  gem "vagrant-aws", git: "https://github.com/mitchellh/vagrant-aws.git"
  gem "aws-sdk"
end