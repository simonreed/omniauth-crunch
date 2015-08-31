require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Crunch < OmniAuth::Strategies::OAuth
      option :name, 'crunch'

      option :client_options,
             access_token_path: '/crunch-core/oauth/access_token',
             authorize_path: '/crunch-core/login/oauth-login.seam',
             request_token_path: '/crunch-core/oauth/request_token',
             site: 'https://demo.crunch.co.uk'

      def request_phase
        if options[:scope]
          options[:authorize_params] = { perms: options[:scope] }
        end
        super
      end
    end
  end
end
