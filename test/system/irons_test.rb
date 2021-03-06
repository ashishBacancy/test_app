require "application_system_test_case"

class IronsTest < ApplicationSystemTestCase
  setup do
    @iron = irons(:one)
  end

  test "visiting the index" do
    visit irons_url
    assert_selector "h1", text: "Irons"
  end

  test "creating a Iron" do
    visit irons_url
    click_on "New Iron"

    fill_in "Name", with: @iron.name
    fill_in "Type", with: @iron.type
    click_on "Create Iron"

    assert_text "Iron was successfully created"
    click_on "Back"
  end

  test "updating a Iron" do
    visit irons_url
    click_on "Edit", match: :first

    fill_in "Name", with: @iron.name
    fill_in "Type", with: @iron.type
    click_on "Update Iron"

    assert_text "Iron was successfully updated"
    click_on "Back"
  end

  test "destroying a Iron" do
    visit irons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iron was successfully destroyed"
  end
end
