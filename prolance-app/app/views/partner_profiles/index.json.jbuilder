json.array!(@partner_profiles) do |partner_profile|
  json.extract! partner_profile, :id, :user_id, :admin_service_city_id, :driving_licence_number, :driving_license_state, :pan_number, :adhaar_number, :passport_number, :passport_issue_city, :admin_service_id, :approval_code, :approved_by, :approved_timestamp, :address_line1, :address_line2, :address_line3, :city, :state, :pin_code
  json.url partner_profile_url(partner_profile, format: :json)
end
