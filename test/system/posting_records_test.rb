require "application_system_test_case"

class PostingRecordsTest < ApplicationSystemTestCase
  setup do
    @posting_record = posting_records(:one)
  end

  test "visiting the index" do
    visit posting_records_url
    assert_selector "h1", text: "Posting Records"
  end

  test "creating a Posting record" do
    visit posting_records_url
    click_on "New Posting Record"

    fill_in "Created at", with: @posting_record.created_at
    fill_in "Field dduty", with: @posting_record.field_dduty
    fill_in "From", with: @posting_record.from
    fill_in "Id", with: @posting_record.id
    fill_in "Peace duty", with: @posting_record.peace_duty
    fill_in "Professional detail", with: @posting_record.professional_detail_id
    fill_in "To", with: @posting_record.to
    fill_in "Total field duty day", with: @posting_record.total_field_duty_day
    fill_in "Total peace duty day", with: @posting_record.total_peace_duty_day
    fill_in "Updated at", with: @posting_record.updated_at
    click_on "Create Posting record"

    assert_text "Posting record was successfully created"
    click_on "Back"
  end

  test "updating a Posting record" do
    visit posting_records_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @posting_record.created_at
    fill_in "Field dduty", with: @posting_record.field_dduty
    fill_in "From", with: @posting_record.from
    fill_in "Id", with: @posting_record.id
    fill_in "Peace duty", with: @posting_record.peace_duty
    fill_in "Professional detail", with: @posting_record.professional_detail_id
    fill_in "To", with: @posting_record.to
    fill_in "Total field duty day", with: @posting_record.total_field_duty_day
    fill_in "Total peace duty day", with: @posting_record.total_peace_duty_day
    fill_in "Updated at", with: @posting_record.updated_at
    click_on "Update Posting record"

    assert_text "Posting record was successfully updated"
    click_on "Back"
  end

  test "destroying a Posting record" do
    visit posting_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Posting record was successfully destroyed"
  end
end
