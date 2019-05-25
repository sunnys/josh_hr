require 'test_helper'

class LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get loans_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_url
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post loans_url, params: { loan: { amount: @loan.amount, created_at: @loan.created_at, duration: @loan.duration, emi: @loan.emi, id: @loan.id, loan_sanction_date: @loan.loan_sanction_date, loan_type: @loan.loan_type, personel_detail_id: @loan.personel_detail_id, updated_at: @loan.updated_at } }
    end

    assert_redirected_to loan_url(Loan.last)
  end

  test "should show loan" do
    get loan_url(@loan)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_url(@loan)
    assert_response :success
  end

  test "should update loan" do
    patch loan_url(@loan), params: { loan: { amount: @loan.amount, created_at: @loan.created_at, duration: @loan.duration, emi: @loan.emi, id: @loan.id, loan_sanction_date: @loan.loan_sanction_date, loan_type: @loan.loan_type, personel_detail_id: @loan.personel_detail_id, updated_at: @loan.updated_at } }
    assert_redirected_to loan_url(@loan)
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete loan_url(@loan)
    end

    assert_redirected_to loans_url
  end
end
