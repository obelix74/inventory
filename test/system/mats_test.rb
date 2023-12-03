require "application_system_test_case"

class MatsTest < ApplicationSystemTestCase
  setup do
    @mat = mats(:one)
  end

  test "visiting the index" do
    visit mats_url
    assert_selector "h1", text: "Mats"
  end

  test "should create mat" do
    visit mats_url
    click_on "New mat"

    fill_in "Inner", with: @mat.inner
    fill_in "Outer", with: @mat.outer
    click_on "Create Mat"

    assert_text "Mat was successfully created"
    click_on "Back"
  end

  test "should update Mat" do
    visit mat_url(@mat)
    click_on "Edit this mat", match: :first

    fill_in "Inner", with: @mat.inner
    fill_in "Outer", with: @mat.outer
    click_on "Update Mat"

    assert_text "Mat was successfully updated"
    click_on "Back"
  end

  test "should destroy Mat" do
    visit mat_url(@mat)
    click_on "Destroy this mat", match: :first

    assert_text "Mat was successfully destroyed"
  end
end
