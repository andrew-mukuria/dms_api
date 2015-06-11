require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { name: @service.name }
    end

    assert_response 201
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should update service" do
    put :update, id: @service, service: { name: @service.name }
    assert_response 204
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_response 204
  end
end
