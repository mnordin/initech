class SurveyQuestionResultsController < ApplicationController
  # GET /survey_question_results
  # GET /survey_question_results.xml
  def index
    @survey_question_results = SurveyQuestionResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @survey_question_results }
    end
  end

  # GET /survey_question_results/1
  # GET /survey_question_results/1.xml
  def show
    @survey_question_result = SurveyQuestionResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey_question_result }
    end
  end

  # GET /survey_question_results/new
  # GET /survey_question_results/new.xml
  def new
    @survey_question_result = SurveyQuestionResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @survey_question_result }
    end
  end

  # GET /survey_question_results/1/edit
  def edit
    @survey_question_result = SurveyQuestionResult.find(params[:id])
  end

  # POST /survey_question_results
  # POST /survey_question_results.xml
  def create
    @survey_question_result = SurveyQuestionResult.new(params[:survey_question_result])

    respond_to do |format|
      if @survey_question_result.save
        format.html { redirect_to(@survey_question_result, :notice => 'Survey question result was successfully created.') }
        format.xml  { render :xml => @survey_question_result, :status => :created, :location => @survey_question_result }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @survey_question_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /survey_question_results/1
  # PUT /survey_question_results/1.xml
  def update
    @survey_question_result = SurveyQuestionResult.find(params[:id])

    respond_to do |format|
      if @survey_question_result.update_attributes(params[:survey_question_result])
        format.html { redirect_to(@survey_question_result, :notice => 'Survey question result was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @survey_question_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_question_results/1
  # DELETE /survey_question_results/1.xml
  def destroy
    @survey_question_result = SurveyQuestionResult.find(params[:id])
    @survey_question_result.destroy

    respond_to do |format|
      format.html { redirect_to(survey_question_results_url) }
      format.xml  { head :ok }
    end
  end
end
