require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email = emails(:one)
  end

  test "should get index" do
    get emails_url
    assert_response :success
  end

  test "should get new" do
    get new_email_url
    assert_response :success
  end

  test "should create email" do
    assert_difference('Email.count') do
      post emails_url, params: { email: { email: @email.email, firstname: @email.firstname, lastname: @email.lastname, newuser: @email.newuser, passwordreset: @email.passwordreset, reason: @email.reason, unblockemail: @email.unblockemail } }
    end

    assert_redirected_to email_url(Email.last)
  end

  test "should show email" do
    get email_url(@email)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_url(@email)
    assert_response :success
  end

  test "should update email" do
    patch email_url(@email), params: { email: { email: @email.email, firstname: @email.firstname, lastname: @email.lastname, newuser: @email.newuser, passwordreset: @email.passwordreset, reason: @email.reason, unblockemail: @email.unblockemail } }
    assert_redirected_to email_url(@email)
  end

  test "should destroy email" do
    assert_difference('Email.count', -1) do
      delete email_url(@email)
    end

    assert_redirected_to emails_url
  end
end
