require 'test_helper'

class ArchdiocesesControllerTest < ActionController::TestCase
  setup do
    @archdiocese = archdioceses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archdioceses)
  end

  test "should create archdiocese" do
    assert_difference('Archdiocese.count') do
      post :create, archdiocese: { name: @archdiocese.name }
    end

    assert_response 201
  end

  test "should show archdiocese" do
    get :show, id: @archdiocese
    assert_response :success
  end

  test "should update archdiocese" do
    put :update, id: @archdiocese, archdiocese: { name: @archdiocese.name }
    assert_response 204
  end

  test "should destroy archdiocese" do
    assert_difference('Archdiocese.count', -1) do
      delete :destroy, id: @archdiocese
    end

    assert_response 204
  end
end
