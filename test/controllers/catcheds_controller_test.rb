require 'test_helper'

class CatchedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catcheds_index_url
    assert_response :success
  end

end
