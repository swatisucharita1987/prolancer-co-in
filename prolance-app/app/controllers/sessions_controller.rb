class SessionsController < ApplicationController
  
  skip_before_action :authorize
  
  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_service_cities_path
    else 
      redirect_to login_url, alert: "Incorrect user name and password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: 'Logged out'
  end
end
