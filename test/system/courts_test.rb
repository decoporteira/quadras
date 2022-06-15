require "application_system_test_case"

class CourtsTest < ApplicationSystemTestCase
  setup do
    @court = courts(:one)
  end

  test "visiting the index" do
    visit courts_url
    assert_selector "h1", text: "Courts"
  end

  test "creating a Court" do
    visit courts_url
    click_on "New Court"

    fill_in "Name", with: @court.name
    fill_in "Status", with: @court.status
    click_on "Create Court"

    assert_text "Court was successfully created"
    click_on "Back"
  end

  test "updating a Court" do
    visit courts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @court.name
    fill_in "Status", with: @court.status
    click_on "Update Court"

    assert_text "Court was successfully updated"
    click_on "Back"
  end

  test "destroying a Court" do
    visit courts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Court was successfully destroyed"
  end
end
