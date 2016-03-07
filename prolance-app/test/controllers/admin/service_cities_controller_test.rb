require 'test_helper'

class Admin::ServiceCitiesControllerTest < ActionController::TestCase
  setup do
    @admin_service_city = admin_service_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_service_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_service_city" do
    assert_difference('Admin::ServiceCity.count') do
      post :create, admin_service_city: { city_airport_code: @admin_service_city.city_airport_code, city_name: @admin_service_city.city_name, country: @admin_service_city.country, end_pin_code: @admin_service_city.end_pin_code, start_pin_code: @admin_service_city.start_pin_code, state_code: @admin_service_city.state_code, state_name: @admin_service_city.state_name }
    end

    assert_redirected_to admin_service_city_path(assigns(:admin_service_city))
  end

  test "should show admin_service_city" do
    get :show, id: @admin_service_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_service_city
    assert_response :success
  end

  test "should update admin_service_city" do
    patch :update, id: @admin_service_city, admin_service_city: { city_airport_code: @admin_service_city.city_airport_code, city_name: @admin_service_city.city_name, country: @admin_service_city.country, end_pin_code: @admin_service_city.end_pin_code, start_pin_code: @admin_service_city.start_pin_code, state_code: @admin_service_city.state_code, state_name: @admin_service_city.state_name }
    assert_redirected_to admin_service_city_path(assigns(:admin_service_city))
  end

  test "should destroy admin_service_city" do
    assert_difference('Admin::ServiceCity.count', -1) do
      delete :destroy, id: @admin_service_city
    end

    assert_redirected_to admin_service_cities_path
  end
end
