require "application_system_test_case"

class HairsTest < ApplicationSystemTestCase
  setup do
    @hair = hairs(:one)
  end

  test "visiting the index" do
    visit hairs_url
    assert_selector "h1", text: "Hairs"
  end

  test "creating a Hair" do
    visit hairs_url
    click_on "New Hair"

    click_on "Create Hair"

    assert_text "Hair was successfully created"
    click_on "Back"
  end

  test "updating a Hair" do
    visit hairs_url
    click_on "Edit", match: :first

    click_on "Update Hair"

    assert_text "Hair was successfully updated"
    click_on "Back"
  end

  test "destroying a Hair" do
    visit hairs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hair was successfully destroyed"
  end
end
