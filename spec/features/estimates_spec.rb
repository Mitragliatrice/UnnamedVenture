require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do

      visit '/estimates'
      
      expect(page).to have_content('Estimates') 
    end
  end

  describe 'new' do
    it 'can be reached successfully' do

      visit '/estimates/new'
      
      expect(page).to have_content('New')
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      estimate = FactoryGirl.create(:estimate)
      visit "/estimates/#{estimate.id}"
      
      expect(page.status_code).to eq(200)
    end
  end
end

describe 'actions' do
  describe 'create' do
    xit 'creates a new estimate when create estiment is clicked' do
      visit '/estimates/new'
      click_on 'Create Estimate'
      expect(page).to have_current_path(estimate_path(estimate))
    end
  end
end