require 'rails_helper'

RSpec.describe 'Group', type: :system do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Huseyin', password: '123456', email: 'hb@gmail.com')
    @group = @user.groups.create(name: 'Subscription', icon: 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg')
    sign_in @user
  end

  it 'should show correct group name' do
    visit groups_path
    expect(page).to have_content(@group.name)
  end

  it 'should show correct icon image ' do
    visit groups_path
    expect(page).to have_selector("img[src*='#{@group.icon}']")
  end
end
