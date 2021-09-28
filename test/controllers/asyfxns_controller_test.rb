require 'test_helper'

class AsyfxnsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get asyfxns_new_url
    assert_response :success
  end

end
