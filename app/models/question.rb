class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :question_answering_alternatives
  accepts_nested_attributes_for :question_answering_alternatives
 
  validates :description, :presence => true 
  validates :survey_id, :presence => true
  validates :answer_type, :presence => true
  
end
