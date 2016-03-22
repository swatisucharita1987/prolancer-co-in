class CreatePartnerProfiles < ActiveRecord::Migration
  def change
    create_table :partner_profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :admin_service_city, index: true, foreign_key: true
      t.string :driving_licence_number
      t.string :driving_license_state
      t.string :pan_number
      t.string :adhaar_number
      t.string :passport_number
      t.string :passport_issue_city
      t.references :admin_service, index: true, foreign_key: true
      t.string :approval_code
      t.string :approved_by
      t.timestamp :approved_timestamp
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :city
      t.string :state
      t.string :pin_code

      t.timestamps null: false
    end
  end
end
