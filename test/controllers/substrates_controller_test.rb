require "test_helper"

class SubstratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @substrate = substrates(:one)
  end

  test "should get index" do
    get substrates_url
    assert_response :success
  end

  test "should get new" do
    get new_substrate_url
    assert_response :success
  end

  test "should create substrate" do
    assert_difference("Substrate.count") do
      post substrates_url, params: { substrate: { name: @substrate.name, subtype: @substrate.subtype } }
    end

    assert_redirected_to substrate_url(Substrate.last)
  end

  test "should show substrate" do
    get substrate_url(@substrate)
    assert_response :success
  end

  test "should get edit" do
    get edit_substrate_url(@substrate)
    assert_response :success
  end

  test "should update substrate" do
    patch substrate_url(@substrate), params: { substrate: { name: @substrate.name, subtype: @substrate.subtype } }
    assert_redirected_to substrate_url(@substrate)
  end

  test "should destroy substrate" do
    assert_difference("Substrate.count", -1) do
      delete substrate_url(@substrate)
    end

    assert_redirected_to substrates_url
  end
end
