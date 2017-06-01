require 'test_helper'

class HomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homs_index_url
    assert_response :success
  end

end
