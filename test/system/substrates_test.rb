require "application_system_test_case"

class SubstratesTest < ApplicationSystemTestCase
  setup do
    @substrate = substrates(:one)
  end

  test "visiting the index" do
    visit substrates_url
    assert_selector "h1", text: "Substrates"
  end

  test "should create substrate" do
    visit substrates_url
    click_on "New substrate"

    fill_in "Name", with: @substrate.name
    fill_in "Subtype", with: @substrate.subtype
    click_on "Create Substrate"

    assert_text "Substrate was successfully created"
    click_on "Back"
  end

  test "should update Substrate" do
    visit substrate_url(@substrate)
    click_on "Edit this substrate", match: :first

    fill_in "Name", with: @substrate.name
    fill_in "Subtype", with: @substrate.subtype
    click_on "Update Substrate"

    assert_text "Substrate was successfully updated"
    click_on "Back"
  end

  test "should destroy Substrate" do
    visit substrate_url(@substrate)
    click_on "Destroy this substrate", match: :first

    assert_text "Substrate was successfully destroyed"
  end
end
