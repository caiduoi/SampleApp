require 'spec_helper'

describe "UserPages" do
  
  subject { page }
  
  describe "Signup Page" do
    before {visit signup_path}
    let(:submit) { "Create my account" }
    
      it {should have_content("Signup")}
      it {should have_title("Signup")}
      
      describe "with invalid information" do
        it"should not create a user" do
          expect { click_button submit }.not_to change(User, :count)
        end
      end      
      
      describe "with valid information" do
        before do
          fill_in "Name",         with: "Example User"
          fill_in "Email",        with: "user@example.com"
          fill_in "Password",     with: "Abc.123"
          fill_in "Confirmation", with: "Abc.123"
        end
        
        it "should create a user" do
          expect { click_button submit }.to change(User, :count).by(1)
        end
      end            
  end
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) } # Replace with code to make a user variable
    before { visit user_path(user) }
  
    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
end
