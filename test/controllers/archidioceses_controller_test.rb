require 'test_helper'

class ArchidiocesesControllerTest < ActionController::TestCase
  setup do
    @archidiocese = archidioceses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archidioceses)
  end

  test "should create archidiocese" do
    assert_difference('Archidiocese.count') do
      post :create, archidiocese: { name: @archidiocese.name }
    end

    assert_response 201
  end

  test "should show archidiocese" do
    get :show, id: @archidiocese
    assert_response :success
  end

  test "should update archidiocese" do
    put :update, id: @archidiocese, archidiocese: { name: @archidiocese.name }
    assert_response 204
  end

  test "should destroy archidiocese" do
    assert_difference('Archidiocese.count', -1) do
      delete :destroy, id: @archidiocese
    end

    assert_response 204
  end
end
