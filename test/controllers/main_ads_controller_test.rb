require 'test_helper'

class MainAdsControllerTest < ActionController::TestCase
  setup do
    @main_ad = main_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_ad" do
    assert_difference('MainAd.count') do
      post :create, main_ad: { image: @main_ad.image, link: @main_ad.link }
    end

    assert_redirected_to main_ad_path(assigns(:main_ad))
  end

  test "should show main_ad" do
    get :show, id: @main_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_ad
    assert_response :success
  end

  test "should update main_ad" do
    patch :update, id: @main_ad, main_ad: { image: @main_ad.image, link: @main_ad.link }
    assert_redirected_to main_ad_path(assigns(:main_ad))
  end

  test "should destroy main_ad" do
    assert_difference('MainAd.count', -1) do
      delete :destroy, id: @main_ad
    end

    assert_redirected_to main_ads_path
  end
end
