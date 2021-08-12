require "application_system_test_case"

class DetailSalesTest < ApplicationSystemTestCase
  setup do
    @detail_sale = detail_sales(:one)
  end

  test "visiting the index" do
    visit detail_sales_url
    assert_selector "h1", text: "Detail Sales"
  end

  test "creating a Detail sale" do
    visit detail_sales_url
    click_on "New Detail Sale"

    fill_in "Buyer", with: @detail_sale.buyer_id
    fill_in "Caratula", with: @detail_sale.caratula
    fill_in "Contract", with: @detail_sale.contract
    fill_in "Detail", with: @detail_sale.detail
    fill_in "Url", with: @detail_sale.url
    fill_in "Value", with: @detail_sale.value
    click_on "Create Detail sale"

    assert_text "Detail sale was successfully created"
    click_on "Back"
  end

  test "updating a Detail sale" do
    visit detail_sales_url
    click_on "Edit", match: :first

    fill_in "Buyer", with: @detail_sale.buyer_id
    fill_in "Caratula", with: @detail_sale.caratula
    fill_in "Contract", with: @detail_sale.contract
    fill_in "Detail", with: @detail_sale.detail
    fill_in "Url", with: @detail_sale.url
    fill_in "Value", with: @detail_sale.value
    click_on "Update Detail sale"

    assert_text "Detail sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail sale" do
    visit detail_sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail sale was successfully destroyed"
  end
end
