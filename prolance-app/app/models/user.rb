class User < ActiveRecord::Base
  validates :user_name, presence: true, uniqueness: true, :format => { with: /\A[a-zA-Z0-9]*\z/ , :message => 'No special characters, only letters and numbers' }
  validates :email_id, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  has_secure_password
end
