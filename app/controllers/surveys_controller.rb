class SurveysController < ApplicationController
  # GET /surveys
  # GET /surveys.xml
  def index
    @surveys = Survey.all
    @surveys_drafts = Survey.where(:status => "draft").all
    @surveys_scheduled = Survey.where(:status => "scheduled").all
    @surveys_active = Survey.where(:status => "active").all
    @surveys_closed = Survey.where(:status => "closed").all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @surveys }
    end
  end

  # GET /surveys/1
  # GET /surveys/1.xml
  def show
    if admin_signed_in?
      @survey = Survey.find(params[:id])
    else 
      @survey = Survey.where(:status => "active").find_by_random_identifier( params[:id] )
      raise ActiveRecord::RecordNotFound if @survey.nil?
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey }
    end
  end

  # GET /surveys/new
  # GET /surveys/new.xml
  def new
    @survey = Survey.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @survey }
    end
  end

  # GET /surveys/1/edit
  def edit
    @survey = Survey.find(params[:id])
  end

  # POST /surveys
  # POST /surveys.xml
  def create
    @survey = Survey.new(params[:survey])
    @survey.status = "draft"

    # Generate random thing for random_indentifier 
    chars = ("a".."z").to_a + ("0".."9").to_a
    tempstring = ""
    1.upto(10) { |i| tempstring << chars[rand(chars.size-1)] }
    @survey.random_identifier = tempstring

    respond_to do |format|
      if @survey.save
        format.html { redirect_to(@survey, :notice => 'Utvarderingen har skapats!') }
        format.xml  { render :xml => @survey, :status => :created, :location => @survey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /surveys/1
  # PUT /surveys/1.xml
  def update
    @survey = Survey.find(params[:id])

    respond_to do |format|
      if @survey.update_attributes(params[:survey])
        format.html { redirect_to(@survey, :notice => 'Utvarderingen har uppdaterats!') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.xml
  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy

    respond_to do |format|
      format.html { redirect_to(surveys_url) }
      format.xml  { head :ok }
    end
  end

  rescue_from ActiveRecord::RecordNotFound do
    render :action => "404", :status => :not_found
  end

end
