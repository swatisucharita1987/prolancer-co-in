class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email_id
      t.decimal :phone_number

      t.timestamps null: false
    end
  end
end
