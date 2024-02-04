class ApplicationController < ActionController::Base
    before_action :basic_auth

    private

  def basic_auth
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == "user" && password == ENV['BASIC_AUTH_PASSWORD']
      end
    else
      authenticate_or_request_with_http_basic do |username, password|
        username == 'testuser' && password == 'testpass'
      end
    end
  end
end