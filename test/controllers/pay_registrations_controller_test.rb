require 'test_helper'

class PayRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pay_registrations_new_url
    assert_response :success
  end

end
