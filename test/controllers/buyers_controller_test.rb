require 'test_helper'

class BuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyer = buyers(:one)
  end

  test "should get index" do
    get buyers_url
    assert_response :success
  end

  test "should get new" do
    get new_buyer_url
    assert_response :success
  end

  test "should create buyer" do
    assert_difference('Buyer.count') do
      post buyers_url, params: { buyer: { detail: @buyer.detail, mail: @buyer.mail, name: @buyer.name, owner_id: @buyer.owner_id, phone: @buyer.phone, property_id: @buyer.property_id, rut: @buyer.rut } }
    end

    assert_redirected_to buyer_url(Buyer.last)
  end

  test "should show buyer" do
    get buyer_url(@buyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyer_url(@buyer)
    assert_response :success
  end

  test "should update buyer" do
    patch buyer_url(@buyer), params: { buyer: { detail: @buyer.detail, mail: @buyer.mail, name: @buyer.name, owner_id: @buyer.owner_id, phone: @buyer.phone, property_id: @buyer.property_id, rut: @buyer.rut } }
    assert_redirected_to buyer_url(@buyer)
  end

  test "should destroy buyer" do
    assert_difference('Buyer.count', -1) do
      delete buyer_url(@buyer)
    end

    assert_redirected_to buyers_url
  end
end
