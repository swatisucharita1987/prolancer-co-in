class SessionsController < ApplicationController
  
  skip_before_action :authorize
  
  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.user_name
      redirect_to '/welcome/landing_page'
    else 
      redirect_to login_url, alert: "Incorrect user name and password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
