require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Home Page'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home Page')
    end
    
    it "should have the title 'Home'" do
      visit "/static_pages/home"
      expect(page).to have_title('Home')
    end
  end

  describe "Helper page" do
    
    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
  end
  
  describe "About us" do
    it "should have the content 'About us'" do
      visit "/static_pages/about"
      expect(page).to have_content('About us') 
    end
  end
  
end
