require 'test_helper'

class HacksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hack" do
    assert_difference('Hack.count') do
      post :create, :hack => { }
    end

    assert_redirected_to hack_path(assigns(:hack))
  end

  test "should show hack" do
    get :show, :id => hacks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hacks(:one).to_param
    assert_response :success
  end

  test "should update hack" do
    put :update, :id => hacks(:one).to_param, :hack => { }
    assert_redirected_to hack_path(assigns(:hack))
  end

  test "should destroy hack" do
    assert_difference('Hack.count', -1) do
      delete :destroy, :id => hacks(:one).to_param
    end

    assert_redirected_to hacks_path
  end
end
