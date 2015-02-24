require 'test_helper'

class DeaneriesControllerTest < ActionController::TestCase
  setup do
    @deanery = deaneries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deaneries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deanery" do
    assert_difference('Deanery.count') do
      post :create, deanery: {  }
    end

    assert_redirected_to deanery_path(assigns(:deanery))
  end

  test "should show deanery" do
    get :show, id: @deanery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deanery
    assert_response :success
  end

  test "should update deanery" do
    patch :update, id: @deanery, deanery: {  }
    assert_redirected_to deanery_path(assigns(:deanery))
  end

  test "should destroy deanery" do
    assert_difference('Deanery.count', -1) do
      delete :destroy, id: @deanery
    end

    assert_redirected_to deaneries_path
  end
end
