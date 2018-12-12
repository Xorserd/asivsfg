require 'test_helper'

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get applications_url
    assert_response :success
  end

  test "should get new" do
    get new_application_url
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post applications_url, params: { application: { arrival_date: @application.arrival_date, country: @application.country, destination: @application.destination, dob: @application.dob, email: @application.email, gender: @application.gender, homeaddress: @application.homeaddress, name: @application.name, passport_expire: @application.passport_expire, passport_issued: @application.passport_issued, passport_number: @application.passport_number, price: @application.price } }
    end

    assert_redirected_to application_url(Application.last)
  end

  test "should show application" do
    get application_url(@application)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_url(@application)
    assert_response :success
  end

  test "should update application" do
    patch application_url(@application), params: { application: { arrival_date: @application.arrival_date, country: @application.country, destination: @application.destination, dob: @application.dob, email: @application.email, gender: @application.gender, homeaddress: @application.homeaddress, name: @application.name, passport_expire: @application.passport_expire, passport_issued: @application.passport_issued, passport_number: @application.passport_number, price: @application.price } }
    assert_redirected_to application_url(@application)
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete application_url(@application)
    end

    assert_redirected_to applications_url
  end
end
