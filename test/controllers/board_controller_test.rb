require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get b_index" do
    get :b_index
    assert_response :success
  end

  test "should get b_create" do
    get :b_create
    assert_response :success
  end

  test "should get b_show" do
    get :b_show
    assert_response :success
  end

  test "should get b_delete" do
    get :b_delete
    assert_response :success
  end

  test "should get b_update" do
    get :b_update
    assert_response :success
  end

end
