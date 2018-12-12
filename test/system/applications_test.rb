require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "creating a Application" do
    visit applications_url
    click_on "New Application"

    fill_in "Arrival date", with: @application.arrival_date
    fill_in "Country", with: @application.country
    fill_in "Destination", with: @application.destination
    fill_in "Dob", with: @application.dob
    fill_in "Email", with: @application.email
    fill_in "Gender", with: @application.gender
    fill_in "Homeaddress", with: @application.homeaddress
    fill_in "Name", with: @application.name
    fill_in "Passport expire", with: @application.passport_expire
    fill_in "Passport issued", with: @application.passport_issued
    fill_in "Passport number", with: @application.passport_number
    fill_in "Price", with: @application.price
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "updating a Application" do
    visit applications_url
    click_on "Edit", match: :first

    fill_in "Arrival date", with: @application.arrival_date
    fill_in "Country", with: @application.country
    fill_in "Destination", with: @application.destination
    fill_in "Dob", with: @application.dob
    fill_in "Email", with: @application.email
    fill_in "Gender", with: @application.gender
    fill_in "Homeaddress", with: @application.homeaddress
    fill_in "Name", with: @application.name
    fill_in "Passport expire", with: @application.passport_expire
    fill_in "Passport issued", with: @application.passport_issued
    fill_in "Passport number", with: @application.passport_number
    fill_in "Price", with: @application.price
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "destroying a Application" do
    visit applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application was successfully destroyed"
  end
end
