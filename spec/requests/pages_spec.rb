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

	subject { page }

	# Home Page Tests
  describe "Home page" do
  	before { visit root_path }

    it { should have_content('Sigma Theta Psi') }
    it { should have_title('Sigma Theta Psi') }
    it { should_not have_title('Home') }
  end

  # Help Page Tests
  describe "Help page" do
  	before { visit help_path }

  	it { should have_content('Help') }
  	it { should have_title('Sigma Theta Psi | Help') }
  end

  # About Page Tests
  describe "About page" do
  	before { visit about_path }

  	it { should have_content('About') }
  	it { should have_title('Sigma Theta Psi | About') }
  end

  # Contact Page Tests
  describe "Contact page" do
  	before { visit contact_path }

  	it { should have_content('Contact') }
  	it { should have_title('Sigma Theta Psi | Contact') }
  end
end
