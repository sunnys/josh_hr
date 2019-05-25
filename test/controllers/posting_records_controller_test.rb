require 'test_helper'

class PostingRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posting_record = posting_records(:one)
  end

  test "should get index" do
    get posting_records_url
    assert_response :success
  end

  test "should get new" do
    get new_posting_record_url
    assert_response :success
  end

  test "should create posting_record" do
    assert_difference('PostingRecord.count') do
      post posting_records_url, params: { posting_record: { created_at: @posting_record.created_at, field_dduty: @posting_record.field_dduty, from: @posting_record.from, id: @posting_record.id, peace_duty: @posting_record.peace_duty, professional_detail_id: @posting_record.professional_detail_id, to: @posting_record.to, total_field_duty_day: @posting_record.total_field_duty_day, total_peace_duty_day: @posting_record.total_peace_duty_day, updated_at: @posting_record.updated_at } }
    end

    assert_redirected_to posting_record_url(PostingRecord.last)
  end

  test "should show posting_record" do
    get posting_record_url(@posting_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_posting_record_url(@posting_record)
    assert_response :success
  end

  test "should update posting_record" do
    patch posting_record_url(@posting_record), params: { posting_record: { created_at: @posting_record.created_at, field_dduty: @posting_record.field_dduty, from: @posting_record.from, id: @posting_record.id, peace_duty: @posting_record.peace_duty, professional_detail_id: @posting_record.professional_detail_id, to: @posting_record.to, total_field_duty_day: @posting_record.total_field_duty_day, total_peace_duty_day: @posting_record.total_peace_duty_day, updated_at: @posting_record.updated_at } }
    assert_redirected_to posting_record_url(@posting_record)
  end

  test "should destroy posting_record" do
    assert_difference('PostingRecord.count', -1) do
      delete posting_record_url(@posting_record)
    end

    assert_redirected_to posting_records_url
  end
end
