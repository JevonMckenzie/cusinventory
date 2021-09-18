require 'test_helper'

class BorderRotationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get border_rotation_index_url
    assert_response :success
  end

  test "should get create" do
    get border_rotation_create_url
    assert_response :success
  end

  test "should get new" do
    get border_rotation_new_url
    assert_response :success
  end

end
