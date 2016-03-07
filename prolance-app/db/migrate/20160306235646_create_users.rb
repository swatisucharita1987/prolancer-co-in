class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_first_name
      t.string :user_last_name
      t.date :user_dob
      t.string :email_id
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
