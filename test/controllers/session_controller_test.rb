require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signin_path
    assert_response :success
  end

end
