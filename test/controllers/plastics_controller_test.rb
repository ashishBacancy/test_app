require "test_helper"

class PlasticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plastic = plastics(:one)
  end

  test "should get index" do
    get plastics_url
    assert_response :success
  end

  test "should get new" do
    get new_plastic_url
    assert_response :success
  end

  test "should create plastic" do
    assert_difference('Plastic.count') do
      post plastics_url, params: { plastic: { name: @plastic.name, type: @plastic.type } }
    end

    assert_redirected_to plastic_url(Plastic.last)
  end

  test "should show plastic" do
    get plastic_url(@plastic)
    assert_response :success
  end

  test "should get edit" do
    get edit_plastic_url(@plastic)
    assert_response :success
  end

  test "should update plastic" do
    patch plastic_url(@plastic), params: { plastic: { name: @plastic.name, type: @plastic.type } }
    assert_redirected_to plastic_url(@plastic)
  end

  test "should destroy plastic" do
    assert_difference('Plastic.count', -1) do
      delete plastic_url(@plastic)
    end

    assert_redirected_to plastics_url
  end
end
