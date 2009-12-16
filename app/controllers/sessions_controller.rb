class SessionsController < ApplicationController

def new
  @user = User.find(:first)
end

def create
  session[:password] = params[:password]
  flash[:notice] = "Successfully logged in"
  redirect_to :controller => "intro", :action => "index"
end

def destroy
  reset_session
  flash[:notice] = "Successfully logged out"
  redirect_to :controller => "intro", :action => "index" 
end

end
