require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :each do
    @user = User.create(name: 'John Doe', email: 'johndoe@gmail.com', password: 123_456, password_confirmation: 123_456)
  end
  context 'validations' do
    it 'is valid with valid attributes' do
      expense = Expense.new(name: 'Bought WinRAR', amount: '50', user_id: @user.id)
      expect(expense).to be_valid
    end

    it 'is not valid without a name' do
      expense = Expense.new(name: nil, amount: '50', user_id: @user.id)
      expect(expense).to_not be_valid
    end

    it 'is not valid without amount input' do
      expense = Expense.new(name: 'Bought WinRAR', amount: nil, user_id: @user.id)
      expect(expense).to_not be_valid
    end

    it 'is not valid without user id' do
      expense = Expense.new(name: 'Bought WinRAR', amount: '50', user_id: nil)

      expect(expense).to_not be_valid
    end
  end
end
