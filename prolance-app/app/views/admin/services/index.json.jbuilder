json.array!(@admin_services) do |admin_service|
  json.extract! admin_service, :id, :service_code, :service_name, :service_category_code, :service_desc
  json.url admin_service_url(admin_service, format: :json)
end
