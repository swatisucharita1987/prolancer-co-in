class ServiceRequest < ActiveRecord::Base

  belongs_to :user
  belongs_to :admin_service_city, :class_name => "Admin::ServiceCity"
  belongs_to :admin_service, :class_name => "Admin::Service"
end
