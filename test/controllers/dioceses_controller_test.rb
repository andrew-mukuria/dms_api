require 'test_helper'

class DiocesesControllerTest < ActionController::TestCase
  setup do
    @diocese = dioceses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dioceses)
  end

  test "should create diocese" do
    assert_difference('Diocese.count') do
      post :create, diocese: { name: @diocese.name }
    end

    assert_response 201
  end

  test "should show diocese" do
    get :show, id: @diocese
    assert_response :success
  end

  test "should update diocese" do
    put :update, id: @diocese, diocese: { name: @diocese.name }
    assert_response 204
  end

  test "should destroy diocese" do
    assert_difference('Diocese.count', -1) do
      delete :destroy, id: @diocese
    end

    assert_response 204
  end
end
