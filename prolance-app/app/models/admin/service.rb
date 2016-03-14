class Admin::Service < ActiveRecord::Base
  has_many :service_requests
  before_destroy :ensure_not_referenced_by_any_service_request
end
