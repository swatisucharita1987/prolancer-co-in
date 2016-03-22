class PartnerProfile < ActiveRecord::Base

  belongs_to :user
  belongs_to :admin_service_city
  belongs_to :admin_service

  validates :user_id, presence: true
  validates :admin_service_id, :presence => {:massage => "Please select a service from the list."}
  validates :admin_service_city_id, :presence=>{:massage => "Oh..oh!Please select a city  from the list."}
  validate :validate_driving_license_number?
  validates :address_line1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :pin_code, presence: true
  #:driving_licence_number, presence: true or validates :pan_number, presence: true or  validates :passport_number, presence: true or validates :adhaar_number, presence: true

  def validate_driving_license_number?
    if !:driving_licence_number.nil? && :driving_license_state.nil?
      errors.add("You must provide the state of issue of your driving license")
    end
  end

end

