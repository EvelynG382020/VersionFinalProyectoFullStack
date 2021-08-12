require "application_system_test_case"

class RentersTest < ApplicationSystemTestCase
  setup do
    @renter = renters(:one)
  end

  test "visiting the index" do
    visit renters_url
    assert_selector "h1", text: "Renters"
  end

  test "creating a Renter" do
    visit renters_url
    click_on "New Renter"

    fill_in "Detail", with: @renter.detail
    fill_in "Mail", with: @renter.mail
    fill_in "Name", with: @renter.name
    fill_in "Owner", with: @renter.owner_id
    fill_in "Phone", with: @renter.phone
    fill_in "Property", with: @renter.property_id
    fill_in "Rut", with: @renter.rut
    click_on "Create Renter"

    assert_text "Renter was successfully created"
    click_on "Back"
  end

  test "updating a Renter" do
    visit renters_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @renter.detail
    fill_in "Mail", with: @renter.mail
    fill_in "Name", with: @renter.name
    fill_in "Owner", with: @renter.owner_id
    fill_in "Phone", with: @renter.phone
    fill_in "Property", with: @renter.property_id
    fill_in "Rut", with: @renter.rut
    click_on "Update Renter"

    assert_text "Renter was successfully updated"
    click_on "Back"
  end

  test "destroying a Renter" do
    visit renters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Renter was successfully destroyed"
  end
end
