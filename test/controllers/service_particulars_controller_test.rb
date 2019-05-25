require 'test_helper'

class ServiceParticularsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_particular = service_particulars(:one)
  end

  test "should get index" do
    get service_particulars_url
    assert_response :success
  end

  test "should get new" do
    get new_service_particular_url
    assert_response :success
  end

  test "should create service_particular" do
    assert_difference('ServiceParticular.count') do
      post service_particulars_url, params: { service_particular: { autority: @service_particular.autority, date_from: @service_particular.date_from, date_to: @service_particular.date_to, days: @service_particular.days, professional_detail_id: @service_particular.professional_detail_id, type_of_service: @service_particular.type_of_service } }
    end

    assert_redirected_to service_particular_url(ServiceParticular.last)
  end

  test "should show service_particular" do
    get service_particular_url(@service_particular)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_particular_url(@service_particular)
    assert_response :success
  end

  test "should update service_particular" do
    patch service_particular_url(@service_particular), params: { service_particular: { autority: @service_particular.autority, date_from: @service_particular.date_from, date_to: @service_particular.date_to, days: @service_particular.days, professional_detail_id: @service_particular.professional_detail_id, type_of_service: @service_particular.type_of_service } }
    assert_redirected_to service_particular_url(@service_particular)
  end

  test "should destroy service_particular" do
    assert_difference('ServiceParticular.count', -1) do
      delete service_particular_url(@service_particular)
    end

    assert_redirected_to service_particulars_url
  end
end
