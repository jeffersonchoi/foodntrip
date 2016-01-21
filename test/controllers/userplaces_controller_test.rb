require 'test_helper'

class UserplacesControllerTest < ActionController::TestCase
  setup do
    @userplace = userplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userplace" do
    assert_difference('Userplace.count') do
      post :create, userplace: { bookmark: @userplace.bookmark, bookmark_date: @userplace.bookmark_date, check_in: @userplace.check_in, checkin_date: @userplace.checkin_date, place_id: @userplace.place_id, user_id: @userplace.user_id }
    end

    assert_redirected_to userplace_path(assigns(:userplace))
  end

  test "should show userplace" do
    get :show, id: @userplace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userplace
    assert_response :success
  end

  test "should update userplace" do
    patch :update, id: @userplace, userplace: { bookmark: @userplace.bookmark, bookmark_date: @userplace.bookmark_date, check_in: @userplace.check_in, checkin_date: @userplace.checkin_date, place_id: @userplace.place_id, user_id: @userplace.user_id }
    assert_redirected_to userplace_path(assigns(:userplace))
  end

  test "should destroy userplace" do
    assert_difference('Userplace.count', -1) do
      delete :destroy, id: @userplace
    end

    assert_redirected_to userplaces_path
  end
end
