json.array!(@service_requests) do |service_request|
  json.extract! service_request, :id, :user_id, :admin_service_city_id, :admin_service_id
  json.url service_request_url(service_request, format: :json)
end
