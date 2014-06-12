require 'test_helper'

class SavedProfilesControllerTest < ActionController::TestCase
  setup do
    @saved_profile = saved_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_profile" do
    assert_difference('SavedProfile.count') do
      post :create, saved_profile: { profile_id: @saved_profile.profile_id, saver_id: @saved_profile.saver_id }
    end

    assert_redirected_to saved_profile_path(assigns(:saved_profile))
  end

  test "should show saved_profile" do
    get :show, id: @saved_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_profile
    assert_response :success
  end

  test "should update saved_profile" do
    put :update, id: @saved_profile, saved_profile: { profile_id: @saved_profile.profile_id, saver_id: @saved_profile.saver_id }
    assert_redirected_to saved_profile_path(assigns(:saved_profile))
  end

  test "should destroy saved_profile" do
    assert_difference('SavedProfile.count', -1) do
      delete :destroy, id: @saved_profile
    end

    assert_redirected_to saved_profiles_path
  end
end
