require 'test_helper'

class AwuserChangeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get awuser_change_index_url
    assert_response :success
  end

  test "should get new" do
    get awuser_change_new_url
    assert_response :success
  end

  test "should get create" do
    get awuser_change_create_url
    assert_response :success
  end

end
