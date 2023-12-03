require "application_system_test_case"

class FramesTest < ApplicationSystemTestCase
  setup do
    @frame = frames(:one)
  end

  test "visiting the index" do
    visit frames_url
    assert_selector "h1", text: "Frames"
  end

  test "should create frame" do
    visit frames_url
    click_on "New frame"

    fill_in "Name", with: @frame.name
    click_on "Create Frame"

    assert_text "Frame was successfully created"
    click_on "Back"
  end

  test "should update Frame" do
    visit frame_url(@frame)
    click_on "Edit this frame", match: :first

    fill_in "Name", with: @frame.name
    click_on "Update Frame"

    assert_text "Frame was successfully updated"
    click_on "Back"
  end

  test "should destroy Frame" do
    visit frame_url(@frame)
    click_on "Destroy this frame", match: :first

    assert_text "Frame was successfully destroyed"
  end
end
