require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "should get home" do
		get :home
		assert_response :success
	end
end
