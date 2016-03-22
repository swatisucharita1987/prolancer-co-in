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
    else
      @partner_profile = PartnerProfile.where(user_id: session[:user_id])
    end
  end

end
