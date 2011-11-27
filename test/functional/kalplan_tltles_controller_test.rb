require 'test_helper'

class KalplanTltlesControllerTest < ActionController::TestCase
  setup do
    @kalplan_tltle = kalplan_tltles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kalplan_tltles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kalplan_tltle" do
    assert_difference('KalplanTltle.count') do
      post :create, kalplan_tltle: @kalplan_tltle.attributes
    end

    assert_redirected_to kalplan_tltle_path(assigns(:kalplan_tltle))
  end

  test "should show kalplan_tltle" do
    get :show, id: @kalplan_tltle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kalplan_tltle.to_param
    assert_response :success
  end

  test "should update kalplan_tltle" do
    put :update, id: @kalplan_tltle.to_param, kalplan_tltle: @kalplan_tltle.attributes
    assert_redirected_to kalplan_tltle_path(assigns(:kalplan_tltle))
  end

  test "should destroy kalplan_tltle" do
    assert_difference('KalplanTltle.count', -1) do
      delete :destroy, id: @kalplan_tltle.to_param
    end

    assert_redirected_to kalplan_tltles_path
  end
end
