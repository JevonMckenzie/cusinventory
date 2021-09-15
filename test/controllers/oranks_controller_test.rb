require 'test_helper'

class OranksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oranks_index_url
    assert_response :success
  end

end
