# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-aws-credentials/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-aws-credentials"
  spec.version       = VagrantPlugins::AwsCredentials::VERSION
  spec.authors       = ["Rafa Nunes"]
  spec.email         = ["datherra@gmail.com.br"]

  spec.summary       = %q{Allows .aws/credentials info to be used on Vagrantfile.}
  spec.description   = %q{If you manage your AWS credentials via different profiles on default aws-cli, this plugin will allow you to use these credentials on you Vagrantfile.}
  spec.homepage      = %q{https://github.com/datherra/vagrant-aws-credentials}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
