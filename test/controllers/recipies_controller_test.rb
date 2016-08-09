require 'test_helper'

class RecipiesControllerTest < ActionDispatch::IntegrationTest
  test "should get instalation" do
    get recipies_instalation_url
    assert_response :success
  end

end
