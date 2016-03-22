require 'test_helper'

class PartnerProfilesControllerTest < ActionController::TestCase
  setup do
    @partner_profile = partner_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_profile" do
    assert_difference('PartnerProfile.count') do
      post :create, partner_profile: { address_line1: @partner_profile.address_line1, address_line2: @partner_profile.address_line2, address_line3: @partner_profile.address_line3, adhaar_number: @partner_profile.adhaar_number, admin_service_city_id: @partner_profile.admin_service_city_id, admin_service_id: @partner_profile.admin_service_id, approval_code: @partner_profile.approval_code, approved_by: @partner_profile.approved_by, approved_timestamp: @partner_profile.approved_timestamp, city: @partner_profile.city, driving_licence_number: @partner_profile.driving_licence_number, driving_license_state: @partner_profile.driving_license_state, pan_number: @partner_profile.pan_number, passport_issue_city: @partner_profile.passport_issue_city, passport_number: @partner_profile.passport_number, pin_code: @partner_profile.pin_code, state: @partner_profile.state, user_id: @partner_profile.user_id }
    end

    assert_redirected_to partner_profile_path(assigns(:partner_profile))
  end

  test "should show partner_profile" do
    get :show, id: @partner_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_profile
    assert_response :success
  end

  test "should update partner_profile" do
    patch :update, id: @partner_profile, partner_profile: { address_line1: @partner_profile.address_line1, address_line2: @partner_profile.address_line2, address_line3: @partner_profile.address_line3, adhaar_number: @partner_profile.adhaar_number, admin_service_city_id: @partner_profile.admin_service_city_id, admin_service_id: @partner_profile.admin_service_id, approval_code: @partner_profile.approval_code, approved_by: @partner_profile.approved_by, approved_timestamp: @partner_profile.approved_timestamp, city: @partner_profile.city, driving_licence_number: @partner_profile.driving_licence_number, driving_license_state: @partner_profile.driving_license_state, pan_number: @partner_profile.pan_number, passport_issue_city: @partner_profile.passport_issue_city, passport_number: @partner_profile.passport_number, pin_code: @partner_profile.pin_code, state: @partner_profile.state, user_id: @partner_profile.user_id }
    assert_redirected_to partner_profile_path(assigns(:partner_profile))
  end

  test "should destroy partner_profile" do
    assert_difference('PartnerProfile.count', -1) do
      delete :destroy, id: @partner_profile
    end

    assert_redirected_to partner_profiles_path
  end
end
