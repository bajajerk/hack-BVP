require 'test_helper'

class DoorsControllerTest < ActionController::TestCase
  setup do
    @door = doors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doors)
  end

  test "should create door" do
    assert_difference('Door.count') do
      post :create, door: { status: @door.status }
    end

    assert_response 201
  end

  test "should show door" do
    get :show, id: @door
    assert_response :success
  end

  test "should update door" do
    put :update, id: @door, door: { status: @door.status }
    assert_response 204
  end

  test "should destroy door" do
    assert_difference('Door.count', -1) do
      delete :destroy, id: @door
    end

    assert_response 204
  end
end
