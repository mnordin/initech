require 'test_helper'

class QuestionAnsweringAlternativesControllerTest < ActionController::TestCase
  setup do
    @question_answering_alternative = question_answering_alternatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_answering_alternatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_answering_alternative" do
    assert_difference('QuestionAnsweringAlternative.count') do
      post :create, :question_answering_alternative => @question_answering_alternative.attributes
    end

    assert_redirected_to question_answering_alternative_path(assigns(:question_answering_alternative))
  end

  test "should show question_answering_alternative" do
    get :show, :id => @question_answering_alternative.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_answering_alternative.to_param
    assert_response :success
  end

  test "should update question_answering_alternative" do
    put :update, :id => @question_answering_alternative.to_param, :question_answering_alternative => @question_answering_alternative.attributes
    assert_redirected_to question_answering_alternative_path(assigns(:question_answering_alternative))
  end

  test "should destroy question_answering_alternative" do
    assert_difference('QuestionAnsweringAlternative.count', -1) do
      delete :destroy, :id => @question_answering_alternative.to_param
    end

    assert_redirected_to question_answering_alternatives_path
  end
end
