require 'test_helper'

class MicrocommandsControllerTest < ActionController::TestCase
  setup do
    @microcommand = microcommands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microcommands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microcommand" do
    assert_difference('Microcommand.count') do
      post :create, microcommand: { command_txt: @microcommand.command_txt, user_id: @microcommand.user_id }
    end

    assert_redirected_to microcommand_path(assigns(:microcommand))
  end

  test "should show microcommand" do
    get :show, id: @microcommand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microcommand
    assert_response :success
  end

  test "should update microcommand" do
    patch :update, id: @microcommand, microcommand: { command_txt: @microcommand.command_txt, user_id: @microcommand.user_id }
    assert_redirected_to microcommand_path(assigns(:microcommand))
  end

  test "should destroy microcommand" do
    assert_difference('Microcommand.count', -1) do
      delete :destroy, id: @microcommand
    end

    assert_redirected_to microcommands_path
  end
end
