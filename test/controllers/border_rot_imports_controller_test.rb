require 'test_helper'

class BorderRotImportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @border_rot_import = border_rot_imports(:one)
  end

  test "should get index" do
    get border_rot_imports_url
    assert_response :success
  end

  test "should get new" do
    get new_border_rot_import_url
    assert_response :success
  end

  test "should create border_rot_import" do
    assert_difference('BorderRotImport.count') do
      post border_rot_imports_url, params: { border_rot_import: {  } }
    end

    assert_redirected_to border_rot_import_url(BorderRotImport.last)
  end

  test "should show border_rot_import" do
    get border_rot_import_url(@border_rot_import)
    assert_response :success
  end

  test "should get edit" do
    get edit_border_rot_import_url(@border_rot_import)
    assert_response :success
  end

  test "should update border_rot_import" do
    patch border_rot_import_url(@border_rot_import), params: { border_rot_import: {  } }
    assert_redirected_to border_rot_import_url(@border_rot_import)
  end

  test "should destroy border_rot_import" do
    assert_difference('BorderRotImport.count', -1) do
      delete border_rot_import_url(@border_rot_import)
    end

    assert_redirected_to border_rot_imports_url
  end
end
