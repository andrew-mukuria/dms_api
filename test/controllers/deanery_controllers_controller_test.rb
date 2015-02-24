require 'test_helper'

class DeaneryControllersControllerTest < ActionController::TestCase
  setup do
    @deanery_controller = deanery_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deanery_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deanery_controller" do
    assert_difference('DeaneryController.count') do
      post :create, deanery_controller: {  }
    end

    assert_redirected_to deanery_controller_path(assigns(:deanery_controller))
  end

  test "should show deanery_controller" do
    get :show, id: @deanery_controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deanery_controller
    assert_response :success
  end

  test "should update deanery_controller" do
    patch :update, id: @deanery_controller, deanery_controller: {  }
    assert_redirected_to deanery_controller_path(assigns(:deanery_controller))
  end

  test "should destroy deanery_controller" do
    assert_difference('DeaneryController.count', -1) do
      delete :destroy, id: @deanery_controller
    end

    assert_redirected_to deanery_controllers_path
  end
end
