require 'rails_helper'

RSpec.describe 'Splash', type: :feature do
  describe 'Splash#index page:' do
    before(:each) do
      visit root_path
    end

    it 'Should show the page header' do
      expect(page).to have_current_path root_path
    end

    context 'When click on Log in button' do
      it 'Should show the page header' do
        first(:link_or_button, 'Log In').click

        expect(page).to have_current_path new_user_session_path
      end
    end

    context 'When click on Sign up button' do
      it 'Should show the page header' do
        first(:link_or_button, 'Sign Up').click

        expect(page).to have_current_path new_user_registration_path
      end
    end
  end
end
