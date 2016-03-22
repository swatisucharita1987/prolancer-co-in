json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :email_id, :phone_number
  json.url user_url(user, format: :json)
end
