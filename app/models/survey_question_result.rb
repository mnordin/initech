class SurveyQuestionResult < ActiveRecord::Base
  belongs_to :question
  belongs_to :report
  
end
