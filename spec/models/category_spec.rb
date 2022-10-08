require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @user = User.create(name: 'Antonio', email: 'antonio@mail.com')
    @user.password = 'pass1234'
    @user.password_confirmation = 'pass1234'
    @category = Category.create(name: 'Cash', icon: 'icon', user_id: @user.id)
  end

  context 'When testing Category class' do
    it 'Should have a name' do
      expect(@category.name).to eq('Cash')
    end

    it 'Should have a icon' do
      expect(@category.icon).to eq('icon')
    end

    it 'Should have an author' do
      expect(@category.user_id).to eq(@user.id)
    end
  end
end
