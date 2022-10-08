require 'rails_helper'

RSpec.describe Clasification, type: :model do
  before do
    @user = User.create(name: 'Antonio', email: 'antonio@mail.com')
    @user.password = 'pass1234'
    @user.password_confirmation = 'pass1234'
    @category = Category.create(name: 'Cash', icon: 'icon', user_id: @user.id)
    @movement = Movement.create(name: 'Uber', amount: 15.67, user_id: @user.id)
    @clasification = Clasification.create(movement_id: @movement.id, category_id: @category.id)
  end

  context 'When testing Movement class' do
    it 'Should have a movement related' do
      expect(@clasification.movement_id).to eq(@movement.id)
    end

    it 'Should have a category related' do
      expect(@clasification.category_id).to eq(@category.id)
    end
  end
end
