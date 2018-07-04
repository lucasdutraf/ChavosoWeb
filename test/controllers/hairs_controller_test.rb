require 'test_helper'

class HairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hair = hairs(:one)
  end

  test "should get index" do
    get hairs_url
    assert_response :success
  end

  test "should get new" do
    get new_hair_url
    assert_response :success
  end

  test "should create hair" do
    assert_difference('Hair.count') do
      post hairs_url, params: { hair: {  } }
    end

    assert_redirected_to hair_url(Hair.last)
  end

  test "should show hair" do
    get hair_url(@hair)
    assert_response :success
  end

  test "should get edit" do
    get edit_hair_url(@hair)
    assert_response :success
  end

  test "should update hair" do
    patch hair_url(@hair), params: { hair: {  } }
    assert_redirected_to hair_url(@hair)
  end

  test "should destroy hair" do
    assert_difference('Hair.count', -1) do
      delete hair_url(@hair)
    end

    assert_redirected_to hairs_url
  end
end
