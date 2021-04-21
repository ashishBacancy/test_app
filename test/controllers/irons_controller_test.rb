require "test_helper"

class IronsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iron = irons(:one)
  end

  test "should get index" do
    get irons_url
    assert_response :success
  end

  test "should get new" do
    get new_iron_url
    assert_response :success
  end

  test "should create iron" do
    assert_difference('Iron.count') do
      post irons_url, params: { iron: { name: @iron.name, type: @iron.type } }
    end

    assert_redirected_to iron_url(Iron.last)
  end

  test "should show iron" do
    get iron_url(@iron)
    assert_response :success
  end

  test "should get edit" do
    get edit_iron_url(@iron)
    assert_response :success
  end

  test "should update iron" do
    patch iron_url(@iron), params: { iron: { name: @iron.name, type: @iron.type } }
    assert_redirected_to iron_url(@iron)
  end

  test "should destroy iron" do
    assert_difference('Iron.count', -1) do
      delete iron_url(@iron)
    end

    assert_redirected_to irons_url
  end
end
