require 'test_helper'

class DbCommandsControllerTest < ActionController::TestCase
  setup do
    @db_command = db_commands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:db_commands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create db_command" do
    assert_difference('DbCommand.count') do
      post :create, db_command: { db_name: @db_command.db_name, db_pass: @db_command.db_pass, db_user: @db_command.db_user, encode: @db_command.encode, option: @db_command.option }
    end

    assert_redirected_to db_command_path(assigns(:db_command))
  end

  test "should show db_command" do
    get :show, id: @db_command
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @db_command
    assert_response :success
  end

  test "should update db_command" do
    patch :update, id: @db_command, db_command: { db_name: @db_command.db_name, db_pass: @db_command.db_pass, db_user: @db_command.db_user, encode: @db_command.encode, option: @db_command.option }
    assert_redirected_to db_command_path(assigns(:db_command))
  end

  test "should destroy db_command" do
    assert_difference('DbCommand.count', -1) do
      delete :destroy, id: @db_command
    end

    assert_redirected_to db_commands_path
  end
end
