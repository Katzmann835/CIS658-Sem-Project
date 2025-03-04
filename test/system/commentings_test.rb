require "application_system_test_case"

class CommentingsTest < ApplicationSystemTestCase
  setup do
    @commenting = commentings(:one)
  end

  test "visiting the index" do
    visit commentings_url
    assert_selector "h1", text: "Commentings"
  end

  test "should create commenting" do
    visit commentings_url
    click_on "New commenting"

    fill_in "Main page", with: @commenting.main_page_id
    fill_in "Parent", with: @commenting.parent_id
    fill_in "Response", with: @commenting.response
    click_on "Create Commenting"

    assert_text "Commenting was successfully created"
    click_on "Back"
  end

  test "should update Commenting" do
    visit commenting_url(@commenting)
    click_on "Edit this commenting", match: :first

    fill_in "Main page", with: @commenting.main_page_id
    fill_in "Parent", with: @commenting.parent_id
    fill_in "Response", with: @commenting.response
    click_on "Update Commenting"

    assert_text "Commenting was successfully updated"
    click_on "Back"
  end

  test "should destroy Commenting" do
    visit commenting_url(@commenting)
    click_on "Destroy this commenting", match: :first

    assert_text "Commenting was successfully destroyed"
  end
end
