# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  
  helper_method :admin?
  
  protected
  
  def authorize
    unless admin?
      redirect_to root_path
      false
    end
  end
  
  def admin?
    @user = User.find(:first)
    session[:password] == @user.password 
  end

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'e782227c64507f5289c1b3762d071c36'
end
