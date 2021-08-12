require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Adress", with: @property.adress
    fill_in "Detail", with: @property.detail
    fill_in "Kind", with: @property.kind
    fill_in "Name", with: @property.name
    fill_in "Owner", with: @property.owner_id
    fill_in "Rol", with: @property.rol
    fill_in "Status", with: @property.status
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @property.adress
    fill_in "Detail", with: @property.detail
    fill_in "Kind", with: @property.kind
    fill_in "Name", with: @property.name
    fill_in "Owner", with: @property.owner_id
    fill_in "Rol", with: @property.rol
    fill_in "Status", with: @property.status
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
