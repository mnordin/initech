class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :question_answering_alternatives
  accepts_nested_attributes_for :question_answering_alternatives, :allow_destroy => true
 
  validates :description, :presence => true 
  validates :survey_id, :presence => true
  validates :answer_type, :presence => true
  
  def getQuestionTypes
    { 
      "textfield" => "textfield",
      "select" => "select",
      "textarea" => "textarea",
      "radiobuttonlist" => "radiobuttonlist",
      "checkboxlist" => "checkboxlist",
      "scale" => "scale"
    }
  end
  
end
