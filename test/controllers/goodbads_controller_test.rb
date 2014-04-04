require 'test_helper'

class GoodbadsControllerTest < ActionController::TestCase
  setup do
    @goodbad = goodbads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goodbads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goodbad" do
    assert_difference('Goodbad.count') do
      post :create, goodbad: { goodbad: @goodbad.goodbad }
    end

    assert_redirected_to goodbad_path(assigns(:goodbad))
  end

  test "should show goodbad" do
    get :show, id: @goodbad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goodbad
    assert_response :success
  end

  test "should update goodbad" do
    patch :update, id: @goodbad, goodbad: { goodbad: @goodbad.goodbad }
    assert_redirected_to goodbad_path(assigns(:goodbad))
  end

  test "should destroy goodbad" do
    assert_difference('Goodbad.count', -1) do
      delete :destroy, id: @goodbad
    end

    assert_redirected_to goodbads_path
  end
end
