require "test_helper"

class PrintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @print = prints(:one)
  end

  test "should get index" do
    get prints_url
    assert_response :success
  end

  test "should get new" do
    get new_print_url
    assert_response :success
  end

  test "should create print" do
    assert_difference("Print.count") do
      post prints_url, params: { print: {  } }
    end

    assert_redirected_to print_url(Print.last)
  end

  test "should show print" do
    get print_url(@print)
    assert_response :success
  end

  test "should get edit" do
    get edit_print_url(@print)
    assert_response :success
  end

  test "should update print" do
    patch print_url(@print), params: { print: {  } }
    assert_redirected_to print_url(@print)
  end

  test "should destroy print" do
    assert_difference("Print.count", -1) do
      delete print_url(@print)
    end

    assert_redirected_to prints_url
  end
end
