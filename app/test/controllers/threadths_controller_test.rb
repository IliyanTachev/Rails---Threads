require 'test_helper'

class ThreadthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threadth = threadths(:one)
  end

  test "should get index" do
    get threadths_url
    assert_response :success
  end

  test "should get new" do
    get new_threadth_url
    assert_response :success
  end

  test "should create threadth" do
    assert_difference('Threadth.count') do
      post threadths_url, params: { threadth: { id: @threadth.id, value: @threadth.value } }
    end

    assert_redirected_to threadth_url(Threadth.last)
  end

  test "should show threadth" do
    get threadth_url(@threadth)
    assert_response :success
  end

  test "should get edit" do
    get edit_threadth_url(@threadth)
    assert_response :success
  end

  test "should update threadth" do
    patch threadth_url(@threadth), params: { threadth: { id: @threadth.id, value: @threadth.value } }
    assert_redirected_to threadth_url(@threadth)
  end

  test "should destroy threadth" do
    assert_difference('Threadth.count', -1) do
      delete threadth_url(@threadth)
    end

    assert_redirected_to threadths_url
  end
end
