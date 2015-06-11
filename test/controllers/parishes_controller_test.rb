require 'test_helper'

class ParishesControllerTest < ActionController::TestCase
  setup do
    @parish = parishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parishes)
  end

  test "should create parish" do
    assert_difference('Parish.count') do
      post :create, parish: { name: @parish.name }
    end

    assert_response 201
  end

  test "should show parish" do
    get :show, id: @parish
    assert_response :success
  end

  test "should update parish" do
    put :update, id: @parish, parish: { name: @parish.name }
    assert_response 204
  end

  test "should destroy parish" do
    assert_difference('Parish.count', -1) do
      delete :destroy, id: @parish
    end

    assert_response 204
  end
end
