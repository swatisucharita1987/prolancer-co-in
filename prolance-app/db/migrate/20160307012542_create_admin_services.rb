class CreateAdminServices < ActiveRecord::Migration
  def change
    create_table :admin_services do |t|
      t.string :service_code
      t.string :service_name
      t.string :service_category_code
      t.string :service_desc

      t.timestamps null: false
    end
  end
end
