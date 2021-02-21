require 'test_helper'

class TonersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toners_index_url
    assert_response :success
  end

  test "should get new" do
    get toners_new_url
    assert_response :success
  end

  test "should get create" do
    get toners_create_url
    assert_response :success
  end

end
