require 'rails_helper'

RSpec.describe 'Group', type: :system do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Huseyin', password: '123456', email: 'hb@gmail.com')
    @group = @user.groups.create(name: 'Subscription', icon: 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg')
    @expense = @group.expenses.create(name: 'Netflix payment', amount: '99', user_id: @user.id)
    @expense2 = @group.expenses.create(name: 'Spotify payment', amount: '99', user_id: @user.id)
    sign_in @user
  end

  it 'should show correct expense/transaction name on the correct group page' do
    visit group_expenses_path(@group)
    expect(page).to have_content(@expense.name)
  end

  it 'should show correct expense/transaction amount on the correct group page ' do
    visit group_expenses_path(@group)
    expect(page).to have_content(@expense.amount)
  end

  it 'should show expenses/transactions total amount on the correct group page ' do
    visit group_expenses_path(@group)
    expect(page).to have_content(@expense.amount + @expense2.amount)
  end
end
