class WelcomeController < ApplicationController
  
  skip_before_action :authorize
  
  def index
  end

  def get_started
  end

  def how_it_works
  end

  def landing_page
    if session[:user_id].nil?
      redirect_to '/login'
    end
  end

end
