require 'test_helper'

class Advert2sControllerTest < ActionController::TestCase
  setup do
    @advert2 = advert2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advert2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advert2" do
    assert_difference('Advert2.count') do
      post :create, advert2: { image: @advert2.image, link: @advert2.link }
    end

    assert_redirected_to advert2_path(assigns(:advert2))
  end

  test "should show advert2" do
    get :show, id: @advert2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advert2
    assert_response :success
  end

  test "should update advert2" do
    patch :update, id: @advert2, advert2: { image: @advert2.image, link: @advert2.link }
    assert_redirected_to advert2_path(assigns(:advert2))
  end

  test "should destroy advert2" do
    assert_difference('Advert2.count', -1) do
      delete :destroy, id: @advert2
    end

    assert_redirected_to advert2s_path
  end
end
