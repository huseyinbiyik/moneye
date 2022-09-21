require 'rails_helper'

RSpec.describe 'Group Page', type: :request do
  describe 'GET #index' do
    include Devise::Test::IntegrationHelpers
    before do
      @user = User.create(name: 'Huseyin', password: '123456', email: 'hb@gmail.com')
      @group = @user.groups.create(name: 'Subscription', icon: 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg')
      @expense = @group.expenses.create(name: 'Netflix payment', amount: '99', user_id: @user.id)
      sign_in @user
    end
    it 'is a HTTP success' do
      get(group_expenses_path(@group))
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      get(group_expenses_path(@group))
      expect(response).to render_template('index')
    end
    it 'renders the groups/categories as list' do
      get(group_expenses_path(@group))
      expect(response.body).to include(@expense.name)
    end
  end
end
