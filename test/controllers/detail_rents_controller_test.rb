require 'test_helper'

class DetailRentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_rent = detail_rents(:one)
  end

  test "should get index" do
    get detail_rents_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_rent_url
    assert_response :success
  end

  test "should create detail_rent" do
    assert_difference('DetailRent.count') do
      post detail_rents_url, params: { detail_rent: { contract: @detail_rent.contract, detail: @detail_rent.detail, renter_id: @detail_rent.renter_id, value: @detail_rent.value } }
    end

    assert_redirected_to detail_rent_url(DetailRent.last)
  end

  test "should show detail_rent" do
    get detail_rent_url(@detail_rent)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_rent_url(@detail_rent)
    assert_response :success
  end

  test "should update detail_rent" do
    patch detail_rent_url(@detail_rent), params: { detail_rent: { contract: @detail_rent.contract, detail: @detail_rent.detail, renter_id: @detail_rent.renter_id, value: @detail_rent.value } }
    assert_redirected_to detail_rent_url(@detail_rent)
  end

  test "should destroy detail_rent" do
    assert_difference('DetailRent.count', -1) do
      delete detail_rent_url(@detail_rent)
    end

    assert_redirected_to detail_rents_url
  end
end
