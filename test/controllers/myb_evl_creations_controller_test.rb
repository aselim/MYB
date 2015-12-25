require 'test_helper'

class MybEvlCreationsControllerTest < ActionController::TestCase
  setup do
    @myb_evl_creation = myb_evl_creations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myb_evl_creations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb_evl_creation" do
    assert_difference('MybEvlCreation.count') do
      post :create, myb_evl_creation: { Author_id: @myb_evl_creation.Author_id, Eval_Time_Min: @myb_evl_creation.Eval_Time_Min, Name: @myb_evl_creation.Name, Schedule: @myb_evl_creation.Schedule, Serial: @myb_evl_creation.Serial, Target_User: @myb_evl_creation.Target_User }
    end

    assert_redirected_to myb_evl_creation_path(assigns(:myb_evl_creation))
  end

  test "should show myb_evl_creation" do
    get :show, id: @myb_evl_creation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb_evl_creation
    assert_response :success
  end

  test "should update myb_evl_creation" do
    patch :update, id: @myb_evl_creation, myb_evl_creation: { Author_id: @myb_evl_creation.Author_id, Eval_Time_Min: @myb_evl_creation.Eval_Time_Min, Name: @myb_evl_creation.Name, Schedule: @myb_evl_creation.Schedule, Serial: @myb_evl_creation.Serial, Target_User: @myb_evl_creation.Target_User }
    assert_redirected_to myb_evl_creation_path(assigns(:myb_evl_creation))
  end

  test "should destroy myb_evl_creation" do
    assert_difference('MybEvlCreation.count', -1) do
      delete :destroy, id: @myb_evl_creation
    end

    assert_redirected_to myb_evl_creations_path
  end
end
