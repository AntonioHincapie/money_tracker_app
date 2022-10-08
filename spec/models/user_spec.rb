require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(name: 'Antonio', email: 'antonio@mail.com')
    @user.password = 'pass1234'
    @user.password_confirmation = 'pass1234'
  end

  context 'When testing User class' do
    it 'Should have a name' do
      expect(@user.name).to eq('Antonio')
    end

    it 'Should have a email' do
      expect(@user.email).to eq('antonio@mail.com')
    end
  end
end
