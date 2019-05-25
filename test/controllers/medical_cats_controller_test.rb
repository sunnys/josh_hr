require 'test_helper'

class MedicalCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_cat = medical_cats(:one)
  end

  test "should get index" do
    get medical_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_cat_url
    assert_response :success
  end

  test "should create medical_cat" do
    assert_difference('MedicalCat.count') do
      post medical_cats_url, params: { medical_cat: { created_at: @medical_cat.created_at, date: @medical_cat.date, hospitalized: @medical_cat.hospitalized, id: @medical_cat.id, nature_of_emergency: @medical_cat.nature_of_emergency, period_month: @medical_cat.period_month, period_year: @medical_cat.period_year, permanent: @medical_cat.permanent, professional_detail_id: @medical_cat.professional_detail_id, shape: @medical_cat.shape, updated_at: @medical_cat.updated_at } }
    end

    assert_redirected_to medical_cat_url(MedicalCat.last)
  end

  test "should show medical_cat" do
    get medical_cat_url(@medical_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_cat_url(@medical_cat)
    assert_response :success
  end

  test "should update medical_cat" do
    patch medical_cat_url(@medical_cat), params: { medical_cat: { created_at: @medical_cat.created_at, date: @medical_cat.date, hospitalized: @medical_cat.hospitalized, id: @medical_cat.id, nature_of_emergency: @medical_cat.nature_of_emergency, period_month: @medical_cat.period_month, period_year: @medical_cat.period_year, permanent: @medical_cat.permanent, professional_detail_id: @medical_cat.professional_detail_id, shape: @medical_cat.shape, updated_at: @medical_cat.updated_at } }
    assert_redirected_to medical_cat_url(@medical_cat)
  end

  test "should destroy medical_cat" do
    assert_difference('MedicalCat.count', -1) do
      delete medical_cat_url(@medical_cat)
    end

    assert_redirected_to medical_cats_url
  end
end
