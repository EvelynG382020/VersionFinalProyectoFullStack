require "application_system_test_case"

class DetailRentsTest < ApplicationSystemTestCase
  setup do
    @detail_rent = detail_rents(:one)
  end

  test "visiting the index" do
    visit detail_rents_url
    assert_selector "h1", text: "Detail Rents"
  end

  test "creating a Detail rent" do
    visit detail_rents_url
    click_on "New Detail Rent"

    fill_in "Contract", with: @detail_rent.contract
    fill_in "Detail", with: @detail_rent.detail
    fill_in "Renter", with: @detail_rent.renter_id
    fill_in "Value", with: @detail_rent.value
    click_on "Create Detail rent"

    assert_text "Detail rent was successfully created"
    click_on "Back"
  end

  test "updating a Detail rent" do
    visit detail_rents_url
    click_on "Edit", match: :first

    fill_in "Contract", with: @detail_rent.contract
    fill_in "Detail", with: @detail_rent.detail
    fill_in "Renter", with: @detail_rent.renter_id
    fill_in "Value", with: @detail_rent.value
    click_on "Update Detail rent"

    assert_text "Detail rent was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail rent" do
    visit detail_rents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail rent was successfully destroyed"
  end
end
