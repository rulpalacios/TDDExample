require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def test_index_successful_response
    get users_path

    assert_response :success
  end
end