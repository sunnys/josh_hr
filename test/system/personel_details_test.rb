require "application_system_test_case"

class PersonelDetailsTest < ApplicationSystemTestCase
  setup do
    @personel_detail = personel_details(:one)
  end

  test "visiting the index" do
    visit personel_details_url
    assert_selector "h1", text: "Personel Details"
  end

  test "creating a Personel detail" do
    visit personel_details_url
    click_on "New Personel Detail"

    fill_in "Adhar no", with: @personel_detail.adhar_no
    fill_in "Age on enrolment", with: @personel_detail.age_on_enrolment
    fill_in "Appointment", with: @personel_detail.appointment
    fill_in "Army no", with: @personel_detail.army_no
    fill_in "Attestation", with: @personel_detail.attestation
    fill_in "Created at", with: @personel_detail.created_at
    fill_in "Date of attestation", with: @personel_detail.date_of_attestation
    fill_in "Date of birth", with: @personel_detail.date_of_birth
    fill_in "Date of enrolment", with: @personel_detail.date_of_enrolment
    fill_in "Driving license no", with: @personel_detail.driving_license_no
    fill_in "Email", with: @personel_detail.email
    fill_in "Family photo", with: @personel_detail.family_photo
    fill_in "Father name", with: @personel_detail.father_name
    fill_in "Id", with: @personel_detail.id
    fill_in "Main class", with: @personel_detail.main_class
    fill_in "Med cat", with: @personel_detail.med_cat
    fill_in "Mobile no", with: @personel_detail.mobile_no
    fill_in "Mothertongue", with: @personel_detail.mothertongue
    fill_in "Name", with: @personel_detail.name
    fill_in "Pancard no", with: @personel_detail.pancard_no
    fill_in "Photo", with: @personel_detail.photo
    fill_in "Rank", with: @personel_detail.rank
    fill_in "Religion", with: @personel_detail.religion
    fill_in "Sub class", with: @personel_detail.sub_class
    fill_in "Trade", with: @personel_detail.trade
    fill_in "Updated at", with: @personel_detail.updated_at
    fill_in "User", with: @personel_detail.user_id
    click_on "Create Personel detail"

    assert_text "Personel detail was successfully created"
    click_on "Back"
  end

  test "updating a Personel detail" do
    visit personel_details_url
    click_on "Edit", match: :first

    fill_in "Adhar no", with: @personel_detail.adhar_no
    fill_in "Age on enrolment", with: @personel_detail.age_on_enrolment
    fill_in "Appointment", with: @personel_detail.appointment
    fill_in "Army no", with: @personel_detail.army_no
    fill_in "Attestation", with: @personel_detail.attestation
    fill_in "Created at", with: @personel_detail.created_at
    fill_in "Date of attestation", with: @personel_detail.date_of_attestation
    fill_in "Date of birth", with: @personel_detail.date_of_birth
    fill_in "Date of enrolment", with: @personel_detail.date_of_enrolment
    fill_in "Driving license no", with: @personel_detail.driving_license_no
    fill_in "Email", with: @personel_detail.email
    fill_in "Family photo", with: @personel_detail.family_photo
    fill_in "Father name", with: @personel_detail.father_name
    fill_in "Id", with: @personel_detail.id
    fill_in "Main class", with: @personel_detail.main_class
    fill_in "Med cat", with: @personel_detail.med_cat
    fill_in "Mobile no", with: @personel_detail.mobile_no
    fill_in "Mothertongue", with: @personel_detail.mothertongue
    fill_in "Name", with: @personel_detail.name
    fill_in "Pancard no", with: @personel_detail.pancard_no
    fill_in "Photo", with: @personel_detail.photo
    fill_in "Rank", with: @personel_detail.rank
    fill_in "Religion", with: @personel_detail.religion
    fill_in "Sub class", with: @personel_detail.sub_class
    fill_in "Trade", with: @personel_detail.trade
    fill_in "Updated at", with: @personel_detail.updated_at
    fill_in "User", with: @personel_detail.user_id
    click_on "Update Personel detail"

    assert_text "Personel detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Personel detail" do
    visit personel_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personel detail was successfully destroyed"
  end
end
