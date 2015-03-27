require 'test_helper'

class Advert3sControllerTest < ActionController::TestCase
  setup do
    @advert3 = advert3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advert3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advert3" do
    assert_difference('Advert3.count') do
      post :create, advert3: { image: @advert3.image, link: @advert3.link }
    end

    assert_redirected_to advert3_path(assigns(:advert3))
  end

  test "should show advert3" do
    get :show, id: @advert3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advert3
    assert_response :success
  end

  test "should update advert3" do
    patch :update, id: @advert3, advert3: { image: @advert3.image, link: @advert3.link }
    assert_redirected_to advert3_path(assigns(:advert3))
  end

  test "should destroy advert3" do
    assert_difference('Advert3.count', -1) do
      delete :destroy, id: @advert3
    end

    assert_redirected_to advert3s_path
  end
end
