require 'test_helper'

class LightsControllerTest < ActionController::TestCase
  setup do
    @light = lights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lights)
  end

  test "should create light" do
    assert_difference('Light.count') do
      post :create, light: { blue: @light.blue, green: @light.green, red: @light.red, status: @light.status }
    end

    assert_response 201
  end

  test "should show light" do
    get :show, id: @light
    assert_response :success
  end

  test "should update light" do
    put :update, id: @light, light: { blue: @light.blue, green: @light.green, red: @light.red, status: @light.status }
    assert_response 204
  end

  test "should destroy light" do
    assert_difference('Light.count', -1) do
      delete :destroy, id: @light
    end

    assert_response 204
  end
end
