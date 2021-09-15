require 'test_helper'

class AcctypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acctype_index_url
    assert_response :success
  end

  test "should get create" do
    get acctype_create_url
    assert_response :success
  end

  test "should get new" do
    get acctype_new_url
    assert_response :success
  end

end
