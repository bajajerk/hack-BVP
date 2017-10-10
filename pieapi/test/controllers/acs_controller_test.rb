require 'test_helper'

class AcsControllerTest < ActionController::TestCase
  setup do
    @ac = acs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acs)
  end

  test "should create ac" do
    assert_difference('Ac.count') do
      post :create, ac: { status: @ac.status }
    end

    assert_response 201
  end

  test "should show ac" do
    get :show, id: @ac
    assert_response :success
  end

  test "should update ac" do
    put :update, id: @ac, ac: { status: @ac.status }
    assert_response 204
  end

  test "should destroy ac" do
    assert_difference('Ac.count', -1) do
      delete :destroy, id: @ac
    end

    assert_response 204
  end
end
