require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can reach the index' do

      visit '/appointments'

      expect(page).to have_content 'Index'
    end
  end 
  
  describe 'new' do
    it 'can use the route for a new appointment' do
      visit '/appointments/new'
      expect(page).to have_content 'New'
    end
  end
  
  describe 'show' do
    it 'can reach the show' do
      appointment = FactoryGirl.create(:appointment)
      visit "/appointments/#{appointment.id}"

      expect(page.status_code).to eq(200)
    end
  end 
end

describe 'actions' do
  describe 'create' do
    xit 'creates a new apointment when submit is clicked' do
      visit '/appointments/new'
      click_on 'Submit'
      expect(page).to have_current_path(appointment_path(appointment))
    end
  end
end