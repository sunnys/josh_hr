require 'test_helper'

class LeaveRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_record = leave_records(:one)
  end

  test "should get index" do
    get leave_records_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_record_url
    assert_response :success
  end

  test "should create leave_record" do
    assert_difference('LeaveRecord.count') do
      post leave_records_url, params: { leave_record: { al: @leave_record.al, cl: @leave_record.cl, created_at: @leave_record.created_at, date_of_rejoining: @leave_record.date_of_rejoining, from: @leave_record.from, id: @leave_record.id, not_returned_on_date: @leave_record.not_returned_on_date, professional_detail_id: @leave_record.professional_detail_id, to: @leave_record.to, total_no_of_days: @leave_record.total_no_of_days, type_of_leave: @leave_record.type_of_leave, updated_at: @leave_record.updated_at } }
    end

    assert_redirected_to leave_record_url(LeaveRecord.last)
  end

  test "should show leave_record" do
    get leave_record_url(@leave_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_record_url(@leave_record)
    assert_response :success
  end

  test "should update leave_record" do
    patch leave_record_url(@leave_record), params: { leave_record: { al: @leave_record.al, cl: @leave_record.cl, created_at: @leave_record.created_at, date_of_rejoining: @leave_record.date_of_rejoining, from: @leave_record.from, id: @leave_record.id, not_returned_on_date: @leave_record.not_returned_on_date, professional_detail_id: @leave_record.professional_detail_id, to: @leave_record.to, total_no_of_days: @leave_record.total_no_of_days, type_of_leave: @leave_record.type_of_leave, updated_at: @leave_record.updated_at } }
    assert_redirected_to leave_record_url(@leave_record)
  end

  test "should destroy leave_record" do
    assert_difference('LeaveRecord.count', -1) do
      delete leave_record_url(@leave_record)
    end

    assert_redirected_to leave_records_url
  end
end
