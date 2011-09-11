require 'test_helper'

class KplansControllerTest < ActionController::TestCase
  setup do
    @kplan = kplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kplan" do
    assert_difference('Kplan.count') do
      post :create, :kplan => @kplan.attributes
    end

    assert_redirected_to kplan_path(assigns(:kplan))
  end

  test "should show kplan" do
    get :show, :id => @kplan.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kplan.to_param
    assert_response :success
  end

  test "should update kplan" do
    put :update, :id => @kplan.to_param, :kplan => @kplan.attributes
    assert_redirected_to kplan_path(assigns(:kplan))
  end

  test "should destroy kplan" do
    assert_difference('Kplan.count', -1) do
      delete :destroy, :id => @kplan.to_param
    end

    assert_redirected_to kplans_path
  end
end
