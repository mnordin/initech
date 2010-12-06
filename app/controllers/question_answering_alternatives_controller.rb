class QuestionAnsweringAlternativesController < ApplicationController
  # GET /question_answering_alternatives
  # GET /question_answering_alternatives.xml
  def index
    @question_answering_alternatives = QuestionAnsweringAlternative.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_answering_alternatives }
    end
  end

  # GET /question_answering_alternatives/1
  # GET /question_answering_alternatives/1.xml
  def show
    @question_answering_alternative = QuestionAnsweringAlternative.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_answering_alternative }
    end
  end

  # GET /question_answering_alternatives/new
  # GET /question_answering_alternatives/new.xml
  def new
    @question_answering_alternative = QuestionAnsweringAlternative.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_answering_alternative }
    end
  end

  # GET /question_answering_alternatives/1/edit
  def edit
    @question_answering_alternative = QuestionAnsweringAlternative.find(params[:id])
  end

  # POST /question_answering_alternatives
  # POST /question_answering_alternatives.xml
  def create
    @question_answering_alternative = QuestionAnsweringAlternative.new(params[:question_answering_alternative])

    respond_to do |format|
      if @question_answering_alternative.save
        format.html { redirect_to(@question_answering_alternative, :notice => 'Question answering alternative was successfully created.') }
        format.xml  { render :xml => @question_answering_alternative, :status => :created, :location => @question_answering_alternative }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_answering_alternative.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_answering_alternatives/1
  # PUT /question_answering_alternatives/1.xml
  def update
    @question_answering_alternative = QuestionAnsweringAlternative.find(params[:id])

    respond_to do |format|
      if @question_answering_alternative.update_attributes(params[:question_answering_alternative])
        format.html { redirect_to(@question_answering_alternative, :notice => 'Question answering alternative was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_answering_alternative.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_answering_alternatives/1
  # DELETE /question_answering_alternatives/1.xml
  def destroy
    @question_answering_alternative = QuestionAnsweringAlternative.find(params[:id])
    @question_answering_alternative.destroy

    respond_to do |format|
      format.html { redirect_to(question_answering_alternatives_url) }
      format.xml  { head :ok }
    end
  end
end
