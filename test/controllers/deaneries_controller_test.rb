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

  test "should create deanery" do
    assert_difference('Deanery.count') do
      post :create, deanery: { name: @deanery.name }
    end

    assert_response 201
  end

  test "should show deanery" do
    get :show, id: @deanery
    assert_response :success
  end

  test "should update deanery" do
    put :update, id: @deanery, deanery: { name: @deanery.name }
    assert_response 204
  end

  test "should destroy deanery" do
    assert_difference('Deanery.count', -1) do
      delete :destroy, id: @deanery
    end

    assert_response 204
  end
end
