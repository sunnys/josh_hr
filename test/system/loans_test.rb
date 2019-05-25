require "application_system_test_case"

class LoansTest < ApplicationSystemTestCase
  setup do
    @loan = loans(:one)
  end

  test "visiting the index" do
    visit loans_url
    assert_selector "h1", text: "Loans"
  end

  test "creating a Loan" do
    visit loans_url
    click_on "New Loan"

    fill_in "Amount", with: @loan.amount
    fill_in "Created at", with: @loan.created_at
    fill_in "Duration", with: @loan.duration
    fill_in "Emi", with: @loan.emi
    fill_in "Id", with: @loan.id
    fill_in "Loan sanction date", with: @loan.loan_sanction_date
    fill_in "Loan type", with: @loan.loan_type
    fill_in "Personel detail", with: @loan.personel_detail_id
    fill_in "Updated at", with: @loan.updated_at
    click_on "Create Loan"

    assert_text "Loan was successfully created"
    click_on "Back"
  end

  test "updating a Loan" do
    visit loans_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @loan.amount
    fill_in "Created at", with: @loan.created_at
    fill_in "Duration", with: @loan.duration
    fill_in "Emi", with: @loan.emi
    fill_in "Id", with: @loan.id
    fill_in "Loan sanction date", with: @loan.loan_sanction_date
    fill_in "Loan type", with: @loan.loan_type
    fill_in "Personel detail", with: @loan.personel_detail_id
    fill_in "Updated at", with: @loan.updated_at
    click_on "Update Loan"

    assert_text "Loan was successfully updated"
    click_on "Back"
  end

  test "destroying a Loan" do
    visit loans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loan was successfully destroyed"
  end
end
