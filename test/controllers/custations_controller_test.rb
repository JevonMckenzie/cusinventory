require 'test_helper'

class CustationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get custations_index_url
    assert_response :success
  end

end
