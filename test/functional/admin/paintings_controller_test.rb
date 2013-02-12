require 'test_helper'

class Admin::PaintingsControllerTest < ActionController::TestCase
  setup do
    @admin_painting = admin_paintings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_paintings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_painting" do
    assert_difference('Admin::Painting.count') do
      post :create, admin_painting: {  }
    end

    assert_redirected_to admin_painting_path(assigns(:admin_painting))
  end

  test "should show admin_painting" do
    get :show, id: @admin_painting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_painting
    assert_response :success
  end

  test "should update admin_painting" do
    put :update, id: @admin_painting, admin_painting: {  }
    assert_redirected_to admin_painting_path(assigns(:admin_painting))
  end

  test "should destroy admin_painting" do
    assert_difference('Admin::Painting.count', -1) do
      delete :destroy, id: @admin_painting
    end

    assert_redirected_to admin_paintings_path
  end
end
