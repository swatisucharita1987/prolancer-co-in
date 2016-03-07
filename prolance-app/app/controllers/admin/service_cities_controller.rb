class Admin::ServiceCitiesController < ApplicationController
  before_action :set_admin_service_city, only: [:show, :edit, :update, :destroy]

  # GET /admin/service_cities
  # GET /admin/service_cities.json
  def index
    @admin_service_cities = Admin::ServiceCity.all
  end

  # GET /admin/service_cities/1
  # GET /admin/service_cities/1.json
  def show
  end

  # GET /admin/service_cities/new
  def new
    @admin_service_city = Admin::ServiceCity.new
  end

  # GET /admin/service_cities/1/edit
  def edit
  end

  # POST /admin/service_cities
  # POST /admin/service_cities.json
  def create
    @admin_service_city = Admin::ServiceCity.new(admin_service_city_params)

    respond_to do |format|
      if @admin_service_city.save
        format.html { redirect_to @admin_service_city, notice: 'Service city was successfully created.' }
        format.json { render :show, status: :created, location: @admin_service_city }
      else
        format.html { render :new }
        format.json { render json: @admin_service_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/service_cities/1
  # PATCH/PUT /admin/service_cities/1.json
  def update
    respond_to do |format|
      if @admin_service_city.update(admin_service_city_params)
        format.html { redirect_to @admin_service_city, notice: 'Service city was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_service_city }
      else
        format.html { render :edit }
        format.json { render json: @admin_service_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/service_cities/1
  # DELETE /admin/service_cities/1.json
  def destroy
    @admin_service_city.destroy
    respond_to do |format|
      format.html { redirect_to admin_service_cities_url, notice: 'Service city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_service_city
      @admin_service_city = Admin::ServiceCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_service_city_params
      params.require(:admin_service_city).permit(:city_airport_code, :city_name, :state_code, :state_name, :country, :start_pin_code, :end_pin_code)
    end
end
