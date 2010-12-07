class Survey < ActiveRecord::Base
  has_many :questions
  validates_presence_of :heading
  accepts_nested_attributes_for :questions, :allow_destroy => true
  
  
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
