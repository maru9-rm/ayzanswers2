class ApplicationController < ActionController::Base
    before_action :basic_auth

    private

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == '1234' && password == '1234'
        #username == ENV['BASIC_AUTH_USERNAME'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end
  end
