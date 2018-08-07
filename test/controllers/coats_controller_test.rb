require 'test_helper'

class CoatsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get coats_search_url
    assert_response :success
  end

end
