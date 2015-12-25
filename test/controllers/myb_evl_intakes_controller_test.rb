require 'test_helper'

class MybEvlIntakesControllerTest < ActionController::TestCase
  setup do
    @myb_evl_intake = myb_evl_intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myb_evl_intakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb_evl_intake" do
    assert_difference('MybEvlIntake.count') do
      post :create, myb_evl_intake: { Duration_min: @myb_evl_intake.Duration_min, Evl_id: @myb_evl_intake.Evl_id, Result: @myb_evl_intake.Result, Solver_id: @myb_evl_intake.Solver_id, Start_time: @myb_evl_intake.Start_time }
    end

    assert_redirected_to myb_evl_intake_path(assigns(:myb_evl_intake))
  end

  test "should show myb_evl_intake" do
    get :show, id: @myb_evl_intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb_evl_intake
    assert_response :success
  end

  test "should update myb_evl_intake" do
    patch :update, id: @myb_evl_intake, myb_evl_intake: { Duration_min: @myb_evl_intake.Duration_min, Evl_id: @myb_evl_intake.Evl_id, Result: @myb_evl_intake.Result, Solver_id: @myb_evl_intake.Solver_id, Start_time: @myb_evl_intake.Start_time }
    assert_redirected_to myb_evl_intake_path(assigns(:myb_evl_intake))
  end

  test "should destroy myb_evl_intake" do
    assert_difference('MybEvlIntake.count', -1) do
      delete :destroy, id: @myb_evl_intake
    end

    assert_redirected_to myb_evl_intakes_path
  end
end
