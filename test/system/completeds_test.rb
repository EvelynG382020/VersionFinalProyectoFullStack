require "application_system_test_case"

class CompletedsTest < ApplicationSystemTestCase
  setup do
    @completed = completeds(:one)
  end

  test "visiting the index" do
    visit completeds_url
    assert_selector "h1", text: "Completeds"
  end

  test "creating a Completed" do
    visit completeds_url
    click_on "New Completed"

    click_on "Create Completed"

    assert_text "Completed was successfully created"
    click_on "Back"
  end

  test "updating a Completed" do
    visit completeds_url
    click_on "Edit", match: :first

    click_on "Update Completed"

    assert_text "Completed was successfully updated"
    click_on "Back"
  end

  test "destroying a Completed" do
    visit completeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Completed was successfully destroyed"
  end
end
