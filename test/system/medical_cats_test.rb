require "application_system_test_case"

class MedicalCatsTest < ApplicationSystemTestCase
  setup do
    @medical_cat = medical_cats(:one)
  end

  test "visiting the index" do
    visit medical_cats_url
    assert_selector "h1", text: "Medical Cats"
  end

  test "creating a Medical cat" do
    visit medical_cats_url
    click_on "New Medical Cat"

    fill_in "Created at", with: @medical_cat.created_at
    fill_in "Date", with: @medical_cat.date
    fill_in "Hospitalized", with: @medical_cat.hospitalized
    fill_in "Id", with: @medical_cat.id
    fill_in "Nature of emergency", with: @medical_cat.nature_of_emergency
    fill_in "Period month", with: @medical_cat.period_month
    fill_in "Period year", with: @medical_cat.period_year
    fill_in "Permanent", with: @medical_cat.permanent
    fill_in "Professional detail", with: @medical_cat.professional_detail_id
    fill_in "Shape", with: @medical_cat.shape
    fill_in "Updated at", with: @medical_cat.updated_at
    click_on "Create Medical cat"

    assert_text "Medical cat was successfully created"
    click_on "Back"
  end

  test "updating a Medical cat" do
    visit medical_cats_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @medical_cat.created_at
    fill_in "Date", with: @medical_cat.date
    fill_in "Hospitalized", with: @medical_cat.hospitalized
    fill_in "Id", with: @medical_cat.id
    fill_in "Nature of emergency", with: @medical_cat.nature_of_emergency
    fill_in "Period month", with: @medical_cat.period_month
    fill_in "Period year", with: @medical_cat.period_year
    fill_in "Permanent", with: @medical_cat.permanent
    fill_in "Professional detail", with: @medical_cat.professional_detail_id
    fill_in "Shape", with: @medical_cat.shape
    fill_in "Updated at", with: @medical_cat.updated_at
    click_on "Update Medical cat"

    assert_text "Medical cat was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical cat" do
    visit medical_cats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical cat was successfully destroyed"
  end
end
