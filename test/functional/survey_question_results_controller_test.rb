require 'test_helper'

class SurveyQuestionResultsControllerTest < ActionController::TestCase
  setup do
    @survey_question_result = survey_question_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_question_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_question_result" do
    assert_difference('SurveyQuestionResult.count') do
      post :create, :survey_question_result => @survey_question_result.attributes
    end

    assert_redirected_to survey_question_result_path(assigns(:survey_question_result))
  end

  test "should show survey_question_result" do
    get :show, :id => @survey_question_result.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @survey_question_result.to_param
    assert_response :success
  end

  test "should update survey_question_result" do
    put :update, :id => @survey_question_result.to_param, :survey_question_result => @survey_question_result.attributes
    assert_redirected_to survey_question_result_path(assigns(:survey_question_result))
  end

  test "should destroy survey_question_result" do
    assert_difference('SurveyQuestionResult.count', -1) do
      delete :destroy, :id => @survey_question_result.to_param
    end

    assert_redirected_to survey_question_results_path
  end
end
