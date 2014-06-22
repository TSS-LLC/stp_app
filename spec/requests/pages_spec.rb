require 'rails_helper'

# RSpec.describe "Pages", :type => :request do
#   describe "GET /pages" do
#     it "works! (now write some real specs)" do
#       get pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end

describe "Pages" do
	# Home Page Tests
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  # Help Page Tests
  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/pages/help'
  		expect(page).to have_content('Help')
  	end
  end

  # About Page Tests
  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/pages/about'
  		expect(page).to have_content('About')
  	end
  end
end
