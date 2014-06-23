require 'rails_helper'

# RSpec.describe "UserPages", :type => :request do
#   describe "GET /user_pages" do
#     it "works! (now write some real specs)" do
#       get user_pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end

RSpec.describe "UserPages", :type => :request do
	subject { page }

	describe "signup page" do
		before { visit signup_path }

		it { should have_content('Sign Up') }
		it { should have_title('Sign Up') }
	end
end