class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :boxed
  # before_filter :require_login

  def require_login
    redirect_to '/auth/google_oauth2' unless session[:logged_in] || AuthorizedIps.authorized_ip?(request.env['HTTP_X_FORWARDED_FOR'])
  end

  def boxed
    @boxed = true
  end
end
