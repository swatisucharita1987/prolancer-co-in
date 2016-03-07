# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(user_first_name: 'Maheshdatta',
user_last_name: 'Mishra',
user_dob: '1984-07-02',
user_role: 'Admin',
user_name: 'maheshdattamishra',
password: 'Administrator',
phone_number: 7735525226,
email_id: 'maheshdattamishra@yahoo.com'
)
