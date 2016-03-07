json.array!(@admin_service_cities) do |admin_service_city|
  json.extract! admin_service_city, :id, :city_airport_code, :city_name, :state_code, :state_name, :country, :start_pin_code, :end_pin_code
  json.url admin_service_city_url(admin_service_city, format: :json)
end
