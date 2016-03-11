require "vagrant"
require "aws-sdk"

module VagrantPlugins
  module AwsCredentials
    class Config < Vagrant.plugin(2, :config)
      attr_accessor :profile

      def initialize
        @profile = UNSET_VALUE
      end

      def finalize!
        @profile = 0 if @profile == UNSET_VALUE
        c = ::Aws::SharedCredentials.new(profile_name: @profile)
        ENV["VAGRANT_AWS_ACCESS_KEY"]        = c.credentials.access_key_id
        ENV["VAGRANT_AWS_SECRET_ACCESS_KEY"] = c.credentials.secret_access_key
        ENV["VAGRANT_AWS_SESSION_TOKEN"]     = c.credentials.session_token
      end
    end
  end
end