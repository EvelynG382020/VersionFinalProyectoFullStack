require 'test_helper'

class DetailSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_sale = detail_sales(:one)
  end

  test "should get index" do
    get detail_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_sale_url
    assert_response :success
  end

  test "should create detail_sale" do
    assert_difference('DetailSale.count') do
      post detail_sales_url, params: { detail_sale: { buyer_id: @detail_sale.buyer_id, caratula: @detail_sale.caratula, contract: @detail_sale.contract, detail: @detail_sale.detail, url: @detail_sale.url, value: @detail_sale.value } }
    end

    assert_redirected_to detail_sale_url(DetailSale.last)
  end

  test "should show detail_sale" do
    get detail_sale_url(@detail_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_sale_url(@detail_sale)
    assert_response :success
  end

  test "should update detail_sale" do
    patch detail_sale_url(@detail_sale), params: { detail_sale: { buyer_id: @detail_sale.buyer_id, caratula: @detail_sale.caratula, contract: @detail_sale.contract, detail: @detail_sale.detail, url: @detail_sale.url, value: @detail_sale.value } }
    assert_redirected_to detail_sale_url(@detail_sale)
  end

  test "should destroy detail_sale" do
    assert_difference('DetailSale.count', -1) do
      delete detail_sale_url(@detail_sale)
    end

    assert_redirected_to detail_sales_url
  end
end
