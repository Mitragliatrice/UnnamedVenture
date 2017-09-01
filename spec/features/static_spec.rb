require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do
    it 'can be reached successfully' do

      visit root_path
      
      expect(page.status_code).to eq(200)
    end
  end

  describe 'about-us' do
    it 'can be reached successfully' do

      visit '/about-us'
      
      expect(page.status_code).to eq(200)
    end
  end

  describe 'contact-us' do
    it 'can be reached successfully' do

      visit '/contact-us'
      
      expect(page.status_code).to eq(200)
    end
  end

  describe 'how-it-works' do
    it 'can be reached successfully' do

      visit '/how-it-works'
      
      expect(page.status_code).to eq(200)
    end
  end
end