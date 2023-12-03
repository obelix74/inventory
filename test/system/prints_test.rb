require "application_system_test_case"

class PrintsTest < ApplicationSystemTestCase
  setup do
    @print = prints(:one)
  end

  test "visiting the index" do
    visit prints_url
    assert_selector "h1", text: "Prints"
  end

  test "should create print" do
    visit prints_url
    click_on "New print"

    click_on "Create Print"

    assert_text "Print was successfully created"
    click_on "Back"
  end

  test "should update Print" do
    visit print_url(@print)
    click_on "Edit this print", match: :first

    click_on "Update Print"

    assert_text "Print was successfully updated"
    click_on "Back"
  end

  test "should destroy Print" do
    visit print_url(@print)
    click_on "Destroy this print", match: :first

    assert_text "Print was successfully destroyed"
  end
end
