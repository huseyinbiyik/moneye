require "test_helper"

class ExpensesGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenses_group = expenses_groups(:one)
  end

  test "should get index" do
    get expenses_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_expenses_group_url
    assert_response :success
  end

  test "should create expenses_group" do
    assert_difference("ExpensesGroup.count") do
      post expenses_groups_url, params: { expenses_group: { expense_id: @expenses_group.expense_id, group_id: @expenses_group.group_id } }
    end

    assert_redirected_to expenses_group_url(ExpensesGroup.last)
  end

  test "should show expenses_group" do
    get expenses_group_url(@expenses_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenses_group_url(@expenses_group)
    assert_response :success
  end

  test "should update expenses_group" do
    patch expenses_group_url(@expenses_group), params: { expenses_group: { expense_id: @expenses_group.expense_id, group_id: @expenses_group.group_id } }
    assert_redirected_to expenses_group_url(@expenses_group)
  end

  test "should destroy expenses_group" do
    assert_difference("ExpensesGroup.count", -1) do
      delete expenses_group_url(@expenses_group)
    end

    assert_redirected_to expenses_groups_url
  end
end
