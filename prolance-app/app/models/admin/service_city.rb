class Admin::ServiceCity < ActiveRecord::Base
  has_many :service_requests
end
