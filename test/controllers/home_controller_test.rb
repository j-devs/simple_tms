require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "root should succeed" do
    get root_url
    assert_response :success
  end

end
