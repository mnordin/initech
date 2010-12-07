class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :question_answering_alternatives
  accepts_nested_attributes_for :question_answering_alternatives, :allow_destroy => true
  
end
