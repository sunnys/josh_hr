require 'test_helper'

class PersonelDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personel_detail = personel_details(:one)
  end

  test "should get index" do
    get personel_details_url
    assert_response :success
  end

  test "should get new" do
    get new_personel_detail_url
    assert_response :success
  end

  test "should create personel_detail" do
    assert_difference('PersonelDetail.count') do
      post personel_details_url, params: { personel_detail: { adhar_no: @personel_detail.adhar_no, age_on_enrolment: @personel_detail.age_on_enrolment, appointment: @personel_detail.appointment, army_no: @personel_detail.army_no, attestation: @personel_detail.attestation, created_at: @personel_detail.created_at, date_of_attestation: @personel_detail.date_of_attestation, date_of_birth: @personel_detail.date_of_birth, date_of_enrolment: @personel_detail.date_of_enrolment, driving_license_no: @personel_detail.driving_license_no, email: @personel_detail.email, family_photo: @personel_detail.family_photo, father_name: @personel_detail.father_name, id: @personel_detail.id, main_class: @personel_detail.main_class, med_cat: @personel_detail.med_cat, mobile_no: @personel_detail.mobile_no, mothertongue: @personel_detail.mothertongue, name: @personel_detail.name, pancard_no: @personel_detail.pancard_no, photo: @personel_detail.photo, rank: @personel_detail.rank, religion: @personel_detail.religion, sub_class: @personel_detail.sub_class, trade: @personel_detail.trade, updated_at: @personel_detail.updated_at, user_id: @personel_detail.user_id } }
    end

    assert_redirected_to personel_detail_url(PersonelDetail.last)
  end

  test "should show personel_detail" do
    get personel_detail_url(@personel_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_personel_detail_url(@personel_detail)
    assert_response :success
  end

  test "should update personel_detail" do
    patch personel_detail_url(@personel_detail), params: { personel_detail: { adhar_no: @personel_detail.adhar_no, age_on_enrolment: @personel_detail.age_on_enrolment, appointment: @personel_detail.appointment, army_no: @personel_detail.army_no, attestation: @personel_detail.attestation, created_at: @personel_detail.created_at, date_of_attestation: @personel_detail.date_of_attestation, date_of_birth: @personel_detail.date_of_birth, date_of_enrolment: @personel_detail.date_of_enrolment, driving_license_no: @personel_detail.driving_license_no, email: @personel_detail.email, family_photo: @personel_detail.family_photo, father_name: @personel_detail.father_name, id: @personel_detail.id, main_class: @personel_detail.main_class, med_cat: @personel_detail.med_cat, mobile_no: @personel_detail.mobile_no, mothertongue: @personel_detail.mothertongue, name: @personel_detail.name, pancard_no: @personel_detail.pancard_no, photo: @personel_detail.photo, rank: @personel_detail.rank, religion: @personel_detail.religion, sub_class: @personel_detail.sub_class, trade: @personel_detail.trade, updated_at: @personel_detail.updated_at, user_id: @personel_detail.user_id } }
    assert_redirected_to personel_detail_url(@personel_detail)
  end

  test "should destroy personel_detail" do
    assert_difference('PersonelDetail.count', -1) do
      delete personel_detail_url(@personel_detail)
    end

    assert_redirected_to personel_details_url
  end
end
