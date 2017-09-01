require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can reach the index' do

      visit '/appointments'

      expect(page).to have_content 'Index'
    end
  end 
end

describe 'actions' do
  describe 'new' do
    it 'can use the route for a new appointment' do
      visit '/appointments/new'
      expect(page).to have_content 'New'
    end
  end
  describe 'create' do
    xit 'creates a new apointment when submit is clicked' do
      visit '/appointments/new'
      click_on 'Submit'
      expect(page).to have_current_path(appointment_path(appointment))
    end
  end
end