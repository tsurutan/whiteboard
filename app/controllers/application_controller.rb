class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :boxed
  before_filter :basic_auth
  # before_filter :require_login

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def require_login
    redirect_to '/auth/google_oauth2' unless session[:logged_in] || AuthorizedIps.authorized_ip?(request.env['HTTP_X_FORWARDED_FOR'])
  end

  def boxed
    @boxed = true
  end
end
