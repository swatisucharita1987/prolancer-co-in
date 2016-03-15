class AddNeedByDateToServiceRequest < ActiveRecord::Migration
  def change
    add_column :service_requests, :need_by_date, :date
  end
end
