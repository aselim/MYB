require 'test_helper'

class MybSupEvlQuestTypesControllerTest < ActionController::TestCase
  setup do
    @myb_sup_evl_quest_type = myb_sup_evl_quest_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myb_sup_evl_quest_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb_sup_evl_quest_type" do
    assert_difference('MybSupEvlQuestType.count') do
      post :create, myb_sup_evl_quest_type: { Type: @myb_sup_evl_quest_type.Type }
    end

    assert_redirected_to myb_sup_evl_quest_type_path(assigns(:myb_sup_evl_quest_type))
  end

  test "should show myb_sup_evl_quest_type" do
    get :show, id: @myb_sup_evl_quest_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb_sup_evl_quest_type
    assert_response :success
  end

  test "should update myb_sup_evl_quest_type" do
    patch :update, id: @myb_sup_evl_quest_type, myb_sup_evl_quest_type: { Type: @myb_sup_evl_quest_type.Type }
    assert_redirected_to myb_sup_evl_quest_type_path(assigns(:myb_sup_evl_quest_type))
  end

  test "should destroy myb_sup_evl_quest_type" do
    assert_difference('MybSupEvlQuestType.count', -1) do
      delete :destroy, id: @myb_sup_evl_quest_type
    end

    assert_redirected_to myb_sup_evl_quest_types_path
  end
end
