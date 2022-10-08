require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  describe 'category#index page:' do
    it 'Should render home page' do
      visit('http://localhost:3000/categories')
      expect(page).to have_content('Money Tracker')
    end

    it 'Should render list of movements' do
      visit('http://localhost:3000/categories/1')
      expect(page).to have_content('Log')
    end
  end
end
