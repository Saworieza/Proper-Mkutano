require 'test_helper'

class Advert1sControllerTest < ActionController::TestCase
  setup do
    @advert1 = advert1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advert1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advert1" do
    assert_difference('Advert1.count') do
      post :create, advert1: { image: @advert1.image, link: @advert1.link }
    end

    assert_redirected_to advert1_path(assigns(:advert1))
  end

  test "should show advert1" do
    get :show, id: @advert1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advert1
    assert_response :success
  end

  test "should update advert1" do
    patch :update, id: @advert1, advert1: { image: @advert1.image, link: @advert1.link }
    assert_redirected_to advert1_path(assigns(:advert1))
  end

  test "should destroy advert1" do
    assert_difference('Advert1.count', -1) do
      delete :destroy, id: @advert1
    end

    assert_redirected_to advert1s_path
  end
end
