require 'test_helper'

class AwusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get awusers_index_url
    assert_response :success
  end

end
