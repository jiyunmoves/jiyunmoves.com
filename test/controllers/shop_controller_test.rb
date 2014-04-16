require 'test_helper'

class ShopControllerTest < ActionController::TestCase
  test "should get shop" do
    get :shop
    assert_response :success
  end

  test "should get shop_category" do
    get :shop_category
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get shop_upload" do
    get :shop_upload
    assert_response :success
  end

  test "should get shop_edit" do
    get :shop_edit
    assert_response :success
  end

  test "should get subcribe" do
    get :subcribe
    assert_response :success
  end

  test "should get buy" do
    get :buy
    assert_response :success
  end

end
