require 'test_helper'

class LeadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lead_index_url
    assert_response :success
  end

end
