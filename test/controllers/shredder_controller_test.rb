require "test_helper"

class ShredderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shredder_index_url
    assert_response :success
  end
end
