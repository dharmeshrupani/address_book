require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

end
