require 'test_helper'

class PetsCountControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pets_count_index_url
    assert_response :success
  end

end
