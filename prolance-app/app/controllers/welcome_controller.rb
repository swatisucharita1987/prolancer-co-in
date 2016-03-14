class WelcomeController < ApplicationController
  
  skip_before_action :authorize
  
  def index
  end
  def get_started
  end
  def how_it_works
  end
  def services
  end
end
