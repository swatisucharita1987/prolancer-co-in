class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.references :admin_service_city, index: true, foreign_key: true
      t.references :admin_service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
