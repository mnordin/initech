class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :question_answering_alternatives
end
