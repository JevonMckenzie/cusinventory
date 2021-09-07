require 'test_helper'

class SupervisorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supervisors_index_url
    assert_response :success
  end

  test "should get new" do
    get supervisors_new_url
    assert_response :success
  end

end
