require 'test_helper'

class MybEvlQuestsControllerTest < ActionController::TestCase
  setup do
    @myb_evl_quest = myb_evl_quests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myb_evl_quests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb_evl_quest" do
    assert_difference('MybEvlQuest.count') do
      post :create, myb_evl_quest: { Answer: @myb_evl_quest.Answer, Evl_id: @myb_evl_quest.Evl_id, Question: @myb_evl_quest.Question, Serial: @myb_evl_quest.Serial, Type: @myb_evl_quest.Type }
    end

    assert_redirected_to myb_evl_quest_path(assigns(:myb_evl_quest))
  end

  test "should show myb_evl_quest" do
    get :show, id: @myb_evl_quest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb_evl_quest
    assert_response :success
  end

  test "should update myb_evl_quest" do
    patch :update, id: @myb_evl_quest, myb_evl_quest: { Answer: @myb_evl_quest.Answer, Evl_id: @myb_evl_quest.Evl_id, Question: @myb_evl_quest.Question, Serial: @myb_evl_quest.Serial, Type: @myb_evl_quest.Type }
    assert_redirected_to myb_evl_quest_path(assigns(:myb_evl_quest))
  end

  test "should destroy myb_evl_quest" do
    assert_difference('MybEvlQuest.count', -1) do
      delete :destroy, id: @myb_evl_quest
    end

    assert_redirected_to myb_evl_quests_path
  end
end
