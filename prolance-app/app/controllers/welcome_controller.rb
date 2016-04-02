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
      if !PartnerProfile.find_by(user_id: session[:user_id]).nil?
        @partner_profile_to_update = PartnerProfile.find_by(user_id: session[:user_id])[:id]
      else
        nil
      end
    end
  end

end
