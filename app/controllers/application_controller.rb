class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :boxed
  before_filter :basic_auth

  def basic_auth
    return if ENV["RAILS_ENV"] == "test"

    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def boxed
    @boxed = true
  end
end
