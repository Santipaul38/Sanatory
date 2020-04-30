require "application_system_test_case"

class SpeciallitiesTest < ApplicationSystemTestCase
  setup do
    @speciallity = speciallities(:one)
  end

  test "visiting the index" do
    visit speciallities_url
    assert_selector "h1", text: "Speciallities"
  end

  test "creating a Speciallity" do
    visit speciallities_url
    click_on "New Speciallity"

    fill_in "Charge", with: @speciallity.charge
    fill_in "Name", with: @speciallity.name
    click_on "Create Speciallity"

    assert_text "Speciallity was successfully created"
    click_on "Back"
  end

  test "updating a Speciallity" do
    visit speciallities_url
    click_on "Edit", match: :first

    fill_in "Charge", with: @speciallity.charge
    fill_in "Name", with: @speciallity.name
    click_on "Update Speciallity"

    assert_text "Speciallity was successfully updated"
    click_on "Back"
  end

  test "destroying a Speciallity" do
    visit speciallities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speciallity was successfully destroyed"
  end
end
