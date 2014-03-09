require 'test_helper'

class BlogControllerTest < ActionController::TestCase
  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get blog_each" do
    get :blog_each
    assert_response :success
  end

  test "should get blog_edit" do
    get :blog_edit
    assert_response :success
  end

  test "should get blog_write" do
    get :blog_write
    assert_response :success
  end

end
