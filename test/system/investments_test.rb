require "application_system_test_case"

class InvestmentsTest < ApplicationSystemTestCase
  setup do
    @investment = investments(:one)
  end

  test "visiting the index" do
    visit investments_url
    assert_selector "h1", text: "Investments"
  end

  test "creating a Investment" do
    visit investments_url
    click_on "New Investment"

    fill_in "Amount", with: @investment.amount
    fill_in "Created at", with: @investment.created_at
    fill_in "Date of maturity", with: @investment.date_of_maturity
    fill_in "Id", with: @investment.id
    fill_in "Investment type", with: @investment.investment_type
    fill_in "Period", with: @investment.period
    fill_in "Personel detail", with: @investment.personel_detail_id
    fill_in "Premium", with: @investment.premium
    fill_in "Updated at", with: @investment.updated_at
    click_on "Create Investment"

    assert_text "Investment was successfully created"
    click_on "Back"
  end

  test "updating a Investment" do
    visit investments_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @investment.amount
    fill_in "Created at", with: @investment.created_at
    fill_in "Date of maturity", with: @investment.date_of_maturity
    fill_in "Id", with: @investment.id
    fill_in "Investment type", with: @investment.investment_type
    fill_in "Period", with: @investment.period
    fill_in "Personel detail", with: @investment.personel_detail_id
    fill_in "Premium", with: @investment.premium
    fill_in "Updated at", with: @investment.updated_at
    click_on "Update Investment"

    assert_text "Investment was successfully updated"
    click_on "Back"
  end

  test "destroying a Investment" do
    visit investments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investment was successfully destroyed"
  end
end
