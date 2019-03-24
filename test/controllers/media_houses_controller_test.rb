require 'test_helper'

class MediaHousesControllerTest < ActionController::TestCase
  setup do
    @media_house = media_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_house" do
    assert_difference('MediaHouse.count') do
      post :create, media_house: { name: @media_house.name }
    end

    assert_redirected_to media_house_path(assigns(:media_house))
  end

  test "should show media_house" do
    get :show, id: @media_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_house
    assert_response :success
  end

  test "should update media_house" do
    patch :update, id: @media_house, media_house: { name: @media_house.name }
    assert_redirected_to media_house_path(assigns(:media_house))
  end

  test "should destroy media_house" do
    assert_difference('MediaHouse.count', -1) do
      delete :destroy, id: @media_house
    end

    assert_redirected_to media_houses_path
  end
end
