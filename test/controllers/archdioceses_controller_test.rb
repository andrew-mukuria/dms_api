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

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archdiocese" do
    assert_difference('Archdiocese.count') do
      post :create, archdiocese: {  }
    end

    assert_redirected_to archdiocese_path(assigns(:archdiocese))
  end

  test "should show archdiocese" do
    get :show, id: @archdiocese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archdiocese
    assert_response :success
  end

  test "should update archdiocese" do
    patch :update, id: @archdiocese, archdiocese: {  }
    assert_redirected_to archdiocese_path(assigns(:archdiocese))
  end

  test "should destroy archdiocese" do
    assert_difference('Archdiocese.count', -1) do
      delete :destroy, id: @archdiocese
    end

    assert_redirected_to archdioceses_path
  end
end
