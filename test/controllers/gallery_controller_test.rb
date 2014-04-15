require 'test_helper'

class GalleryControllerTest < ActionController::TestCase
  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get gallery_upload" do
    get :gallery_upload
    assert_response :success
  end

  test "should get gallery_edit" do
    get :gallery_edit
    assert_response :success
  end

end
