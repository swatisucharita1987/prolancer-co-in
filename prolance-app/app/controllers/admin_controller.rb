class AdminController < ApplicationController
  before_action :authorize
  def index
    @total_cities = Admin::ServiceCity.count
  end
end
