require "application_system_test_case"

class SchedulersTest < ApplicationSystemTestCase
  setup do
    @scheduler = schedulers(:one)
  end

  test "visiting the index" do
    visit schedulers_url
    assert_selector "h1", text: "Schedulers"
  end

  test "should create scheduler" do
    visit schedulers_url
    click_on "New scheduler"

    fill_in "Client", with: @scheduler.client_id
    fill_in "Court", with: @scheduler.court_id
    fill_in "Date", with: @scheduler.date
    fill_in "Hour", with: @scheduler.hour
    fill_in "Status", with: @scheduler.status
    click_on "Create Scheduler"

    assert_text "Scheduler was successfully created"
    click_on "Back"
  end

  test "should update Scheduler" do
    visit scheduler_url(@scheduler)
    click_on "Edit this scheduler", match: :first

    fill_in "Client", with: @scheduler.client_id
    fill_in "Court", with: @scheduler.court_id
    fill_in "Date", with: @scheduler.date
    fill_in "Hour", with: @scheduler.hour
    fill_in "Status", with: @scheduler.status
    click_on "Update Scheduler"

    assert_text "Scheduler was successfully updated"
    click_on "Back"
  end

  test "should destroy Scheduler" do
    visit scheduler_url(@scheduler)
    click_on "Destroy this scheduler", match: :first

    assert_text "Scheduler was successfully destroyed"
  end
end
