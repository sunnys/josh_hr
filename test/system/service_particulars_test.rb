require "application_system_test_case"

class ServiceParticularsTest < ApplicationSystemTestCase
  setup do
    @service_particular = service_particulars(:one)
  end

  test "visiting the index" do
    visit service_particulars_url
    assert_selector "h1", text: "Service Particulars"
  end

  test "creating a Service particular" do
    visit service_particulars_url
    click_on "New Service Particular"

    fill_in "Autority", with: @service_particular.autority
    fill_in "Date from", with: @service_particular.date_from
    fill_in "Date to", with: @service_particular.date_to
    fill_in "Days", with: @service_particular.days
    fill_in "Professional detail", with: @service_particular.professional_detail_id
    fill_in "Type of service", with: @service_particular.type_of_service
    click_on "Create Service particular"

    assert_text "Service particular was successfully created"
    click_on "Back"
  end

  test "updating a Service particular" do
    visit service_particulars_url
    click_on "Edit", match: :first

    fill_in "Autority", with: @service_particular.autority
    fill_in "Date from", with: @service_particular.date_from
    fill_in "Date to", with: @service_particular.date_to
    fill_in "Days", with: @service_particular.days
    fill_in "Professional detail", with: @service_particular.professional_detail_id
    fill_in "Type of service", with: @service_particular.type_of_service
    click_on "Update Service particular"

    assert_text "Service particular was successfully updated"
    click_on "Back"
  end

  test "destroying a Service particular" do
    visit service_particulars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service particular was successfully destroyed"
  end
end
