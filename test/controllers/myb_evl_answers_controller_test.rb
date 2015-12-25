require 'test_helper'

class MybEvlAnswersControllerTest < ActionController::TestCase
  setup do
    @myb_evl_answer = myb_evl_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myb_evl_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb_evl_answer" do
    assert_difference('MybEvlAnswer.count') do
      post :create, myb_evl_answer: { Answer: @myb_evl_answer.Answer, Evl_id: @myb_evl_answer.Evl_id, Intake_id: @myb_evl_answer.Intake_id, Question_id: @myb_evl_answer.Question_id }
    end

    assert_redirected_to myb_evl_answer_path(assigns(:myb_evl_answer))
  end

  test "should show myb_evl_answer" do
    get :show, id: @myb_evl_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb_evl_answer
    assert_response :success
  end

  test "should update myb_evl_answer" do
    patch :update, id: @myb_evl_answer, myb_evl_answer: { Answer: @myb_evl_answer.Answer, Evl_id: @myb_evl_answer.Evl_id, Intake_id: @myb_evl_answer.Intake_id, Question_id: @myb_evl_answer.Question_id }
    assert_redirected_to myb_evl_answer_path(assigns(:myb_evl_answer))
  end

  test "should destroy myb_evl_answer" do
    assert_difference('MybEvlAnswer.count', -1) do
      delete :destroy, id: @myb_evl_answer
    end

    assert_redirected_to myb_evl_answers_path
  end
end
