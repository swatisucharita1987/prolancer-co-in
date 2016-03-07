class CreateAdminServiceCities < ActiveRecord::Migration
  def change
    create_table :admin_service_cities do |t|
      t.string :city_airport_code
      t.string :city_name
      t.string :state_code
      t.string :state_name
      t.string :country
      t.string :start_pin_code
      t.string :end_pin_code

      t.timestamps null: false
    end
  end
end
