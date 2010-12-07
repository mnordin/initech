class Survey < ActiveRecord::Base
  has_many :questions
  accepts_nested_attributes_for :questions
  
  
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
