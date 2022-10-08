require 'rails_helper'

RSpec.describe Movement, type: :model do
  before do
    @user = User.create(name: 'Antonio', email: 'antonio@mail.com')
    @user.password = 'pass1234'
    @user.password_confirmation = 'pass1234'
    @movement = Movement.create(name: 'Uber', amount: 15.67, user_id: @user.id)
  end

  context 'When testing Movement class' do
    it 'Should have a name' do
      expect(@movement.name).to eq('Uber')
    end

    it 'Should have a amount' do
      expect(@movement.amount).to eq(15.67)
    end

    it 'Should have an author' do
      expect(@movement.user_id).to eq(@user.id)
    end
  end
end
