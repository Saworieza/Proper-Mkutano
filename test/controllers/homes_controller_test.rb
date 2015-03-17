require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homes)
  end
end
