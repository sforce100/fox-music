require 'test_helper'

class Admin::SongsControllerTest < ActionController::TestCase
  setup do
    @admin_song = admin_songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_song" do
    assert_difference('Admin::Song.count') do
      post :create, admin_song: {  }
    end

    assert_redirected_to admin_song_path(assigns(:admin_song))
  end

  test "should show admin_song" do
    get :show, id: @admin_song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_song
    assert_response :success
  end

  test "should update admin_song" do
    put :update, id: @admin_song, admin_song: {  }
    assert_redirected_to admin_song_path(assigns(:admin_song))
  end

  test "should destroy admin_song" do
    assert_difference('Admin::Song.count', -1) do
      delete :destroy, id: @admin_song
    end

    assert_redirected_to admin_songs_path
  end
end
