class Admin::ServiceCity < ActiveRecord::Base
  has_many :service_requests
  before_destroy :ensure_no_service_request

  private

  def ensure_no_service_request
    if service_requests.empty?
      return true
    else
      errors.add(:base, "service requests present")
      return false
    end
  end


end
