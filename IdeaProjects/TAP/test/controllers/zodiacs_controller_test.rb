require 'test_helper'

class ZodiacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zodiac = zodiacs(:one)
  end

  test "should get index" do
    get zodiacs_url
    assert_response :success
  end

  test "should get new" do
    get new_zodiac_url
    assert_response :success
  end

  test "should create zodiac" do
    assert_difference('Zodiac.count') do
      post zodiacs_url, params: {zodiac: {zodiac_desc: @zodiac.zodiac_desc}}
    end

    assert_redirected_to zodiac_url(Zodiac.last)
  end

  test "should show zodiac" do
    get zodiac_url(@zodiac)
    assert_response :success
  end

  test "should get edit" do
    get edit_zodiac_url(@zodiac)
    assert_response :success
  end

  test "should update zodiac" do
    patch zodiac_url(@zodiac), params: {zodiac: {zodiac_desc: @zodiac.zodiac_desc}}
    assert_redirected_to zodiac_url(@zodiac)
  end

  test "should destroy zodiac" do
    assert_difference('Zodiac.count', -1) do
      delete zodiac_url(@zodiac)
    end

    assert_redirected_to zodiacs_url
  end
end
