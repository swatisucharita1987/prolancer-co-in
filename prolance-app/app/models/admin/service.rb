class Admin::Service < ActiveRecord::Base
  has_many :service_requests
end
