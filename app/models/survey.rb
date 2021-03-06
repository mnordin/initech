class Survey < ActiveRecord::Base
  has_many :questions
  has_many :reports
  accepts_nested_attributes_for :questions, :allow_destroy => true

  validates :heading, :presence => true
  
  #validates_associated :questions
  
  
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
