require "application_system_test_case"

class LeaveRecordsTest < ApplicationSystemTestCase
  setup do
    @leave_record = leave_records(:one)
  end

  test "visiting the index" do
    visit leave_records_url
    assert_selector "h1", text: "Leave Records"
  end

  test "creating a Leave record" do
    visit leave_records_url
    click_on "New Leave Record"

    fill_in "Al", with: @leave_record.al
    fill_in "Cl", with: @leave_record.cl
    fill_in "Created at", with: @leave_record.created_at
    fill_in "Date of rejoining", with: @leave_record.date_of_rejoining
    fill_in "From", with: @leave_record.from
    fill_in "Id", with: @leave_record.id
    fill_in "Not returned on date", with: @leave_record.not_returned_on_date
    fill_in "Professional detail", with: @leave_record.professional_detail_id
    fill_in "To", with: @leave_record.to
    fill_in "Total no of days", with: @leave_record.total_no_of_days
    fill_in "Type of leave", with: @leave_record.type_of_leave
    fill_in "Updated at", with: @leave_record.updated_at
    click_on "Create Leave record"

    assert_text "Leave record was successfully created"
    click_on "Back"
  end

  test "updating a Leave record" do
    visit leave_records_url
    click_on "Edit", match: :first

    fill_in "Al", with: @leave_record.al
    fill_in "Cl", with: @leave_record.cl
    fill_in "Created at", with: @leave_record.created_at
    fill_in "Date of rejoining", with: @leave_record.date_of_rejoining
    fill_in "From", with: @leave_record.from
    fill_in "Id", with: @leave_record.id
    fill_in "Not returned on date", with: @leave_record.not_returned_on_date
    fill_in "Professional detail", with: @leave_record.professional_detail_id
    fill_in "To", with: @leave_record.to
    fill_in "Total no of days", with: @leave_record.total_no_of_days
    fill_in "Type of leave", with: @leave_record.type_of_leave
    fill_in "Updated at", with: @leave_record.updated_at
    click_on "Update Leave record"

    assert_text "Leave record was successfully updated"
    click_on "Back"
  end

  test "destroying a Leave record" do
    visit leave_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leave record was successfully destroyed"
  end
end
