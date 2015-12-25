require 'test_helper'

class MybPadAccountsControllerTest < ActionController::TestCase
  setup do
    @myb_pad_account = myb_pad_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myb_pad_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb_pad_account" do
    assert_difference('MybPadAccount.count') do
      post :create, myb_pad_account: { Password: @myb_pad_account.Password, Username: @myb_pad_account.Username }
    end

    assert_redirected_to myb_pad_account_path(assigns(:myb_pad_account))
  end

  test "should show myb_pad_account" do
    get :show, id: @myb_pad_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb_pad_account
    assert_response :success
  end

  test "should update myb_pad_account" do
    patch :update, id: @myb_pad_account, myb_pad_account: { Password: @myb_pad_account.Password, Username: @myb_pad_account.Username }
    assert_redirected_to myb_pad_account_path(assigns(:myb_pad_account))
  end

  test "should destroy myb_pad_account" do
    assert_difference('MybPadAccount.count', -1) do
      delete :destroy, id: @myb_pad_account
    end

    assert_redirected_to myb_pad_accounts_path
  end
end
