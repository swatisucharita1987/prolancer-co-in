class PartnerProfilesController < ApplicationController
  before_action :set_partner_profile, only: [:show, :edit, :update]

  # GET /partner_profiles
  # GET /partner_profiles.json
  def index
    @partner_profiles = PartnerProfile.all
  end

  # GET /partner_profiles/1
  # GET /partner_profiles/1.json
  def show
  end

  # GET /partner_profiles/new
  def new
    @partner_profile = PartnerProfile.new
  end

  # GET /partner_profiles/1/edit
  def edit
  end

  # POST /partner_profiles
  # POST /partner_profiles.json
  def create
    @partner_profile = PartnerProfile.new(partner_profile_params)

    respond_to do |format|
      if @partner_profile.save
        format.html { redirect_to @partner_profile, notice: 'Partner profile was successfully created.' }
        format.json { render :show, status: :created, location: @partner_profile }
      else
        format.html { render :new }
        format.json { render json: @partner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_profiles/1
  # PATCH/PUT /partner_profiles/1.json
  def update
    respond_to do |format|
      if @partner_profile.update(partner_profile_params)
        format.html { redirect_to @partner_profile, notice: 'Partner profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_profile }
      else
        format.html { render :edit }
        format.json { render json: @partner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_profiles/1
  # DELETE /partner_profiles/1.json
  def destroy
    @partner_profile.destroy
    respond_to do |format|
      format.html { redirect_to partner_profiles_url, notice: 'Partner profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_profile
      @partner_profile = PartnerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_profile_params
      params.require(:partner_profile).permit(:user_id, :admin_service_city_id, :driving_licence_number, :driving_license_state, :pan_number, :adhaar_number, :passport_number, :passport_issue_city, :admin_service_id, :approval_code, :approved_by, :approved_timestamp, :address_line1, :address_line2, :address_line3, :city, :state, :pin_code)
    end
end
