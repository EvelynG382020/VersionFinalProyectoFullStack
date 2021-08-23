require 'test_helper'

class CompletedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed = completeds(:one)
  end

  test "should get index" do
    get completeds_url
    assert_response :success
  end

  test "should get new" do
    get new_completed_url
    assert_response :success
  end

  test "should create completed" do
    assert_difference('Completed.count') do
      post completeds_url, params: { completed: {  } }
    end

    assert_redirected_to completed_url(Completed.last)
  end

  test "should show completed" do
    get completed_url(@completed)
    assert_response :success
  end

  test "should get edit" do
    get edit_completed_url(@completed)
    assert_response :success
  end

  test "should update completed" do
    patch completed_url(@completed), params: { completed: {  } }
    assert_redirected_to completed_url(@completed)
  end

  test "should destroy completed" do
    assert_difference('Completed.count', -1) do
      delete completed_url(@completed)
    end

    assert_redirected_to completeds_url
  end
end
