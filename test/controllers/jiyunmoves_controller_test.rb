require 'test_helper'

class JiyunmovesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
