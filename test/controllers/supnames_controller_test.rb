require 'test_helper'

class SupnamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get supnames_new_url
    assert_response :success
  end

end
