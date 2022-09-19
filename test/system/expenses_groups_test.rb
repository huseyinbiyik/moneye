require 'application_system_test_case'

class ExpensesGroupsTest < ApplicationSystemTestCase
  setup do
    @expenses_group = expenses_groups(:one)
  end

  test 'visiting the index' do
    visit expenses_groups_url
    assert_selector 'h1', text: 'Expenses groups'
  end

  test 'should create expenses group' do
    visit expenses_groups_url
    click_on 'New expenses group'

    fill_in 'Expense', with: @expenses_group.expense_id
    fill_in 'Group', with: @expenses_group.group_id
    click_on 'Create Expenses group'

    assert_text 'Expenses group was successfully created'
    click_on 'Back'
  end

  test 'should update Expenses group' do
    visit expenses_group_url(@expenses_group)
    click_on 'Edit this expenses group', match: :first

    fill_in 'Expense', with: @expenses_group.expense_id
    fill_in 'Group', with: @expenses_group.group_id
    click_on 'Update Expenses group'

    assert_text 'Expenses group was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Expenses group' do
    visit expenses_group_url(@expenses_group)
    click_on 'Destroy this expenses group', match: :first

    assert_text 'Expenses group was successfully destroyed'
  end
end
