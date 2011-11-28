require 'test_helper'

class KbodiesControllerTest < ActionController::TestCase
  setup do
    @kbody = kbodies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kbodies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kbody" do
    assert_difference('Kbody.count') do
      post :create, kbody: @kbody.attributes
    end

    assert_redirected_to kbody_path(assigns(:kbody))
  end

  test "should show kbody" do
    get :show, id: @kbody.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kbody.to_param
    assert_response :success
  end

  test "should update kbody" do
    put :update, id: @kbody.to_param, kbody: @kbody.attributes
    assert_redirected_to kbody_path(assigns(:kbody))
  end

  test "should destroy kbody" do
    assert_difference('Kbody.count', -1) do
      delete :destroy, id: @kbody.to_param
    end

    assert_redirected_to kbodies_path
  end
end
