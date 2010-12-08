class Survey < ActiveRecord::Base
  has_many :questions
<<<<<<< HEAD
  validates_presence_of :heading
  accepts_nested_attributes_for :questions, :allow_destroy => true
  
  
=======
  accepts_nested_attributes_for :questions

  validates :status, :presence => true
  validates :heading, :presence => true

>>>>>>> 9f21e2841e0e1a36601c3b4f8622deed4af504d7
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
