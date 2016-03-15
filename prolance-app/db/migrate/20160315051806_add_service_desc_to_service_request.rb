class AddServiceDescToServiceRequest < ActiveRecord::Migration
  def change
    add_column :service_requests, :service_desc, :string
  end
end
