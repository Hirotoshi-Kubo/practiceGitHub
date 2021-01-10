require 'test_helper'

class BowlingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowling = bowlings(:one)
  end

  test "should get index" do
    get bowlings_url
    assert_response :success
  end

  test "should get new" do
    get new_bowling_url
    assert_response :success
  end

  test "should create bowling" do
    assert_difference('Bowling.count') do
      post bowlings_url, params: { bowling: { address: @bowling.address, name: @bowling.name } }
    end

    assert_redirected_to bowling_url(Bowling.last)
  end

  test "should show bowling" do
    get bowling_url(@bowling)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowling_url(@bowling)
    assert_response :success
  end

  test "should update bowling" do
    patch bowling_url(@bowling), params: { bowling: { address: @bowling.address, name: @bowling.name } }
    assert_redirected_to bowling_url(@bowling)
  end

  test "should destroy bowling" do
    assert_difference('Bowling.count', -1) do
      delete bowling_url(@bowling)
    end

    assert_redirected_to bowlings_url
  end
end
