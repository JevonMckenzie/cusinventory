require 'test_helper'

class CusectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cusections_new_url
    assert_response :success
  end

  test "should get index" do
    get cusections_index_url
    assert_response :success
  end

end
