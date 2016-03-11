require "vagrant-aws-credentials/version"
require "vagrant"

module VagrantPlugins
  module AwsCredentials
    class Plugin < Vagrant.plugin("2")

      name "AWS Credentials"
      description <<-DESC
      Uses aws-sdk gem to load aws credentials in the same way that awscli does.
      DESC

      config "aws_credentials" do
        require_relative "config"
        Config
      end
    end
  end
end

