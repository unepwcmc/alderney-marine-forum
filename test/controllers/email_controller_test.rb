require 'test_helper'

class EmailControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get email_create_url
    assert_response :success
  end

end
