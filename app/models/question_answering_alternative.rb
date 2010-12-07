class QuestionAnsweringAlternative < ActiveRecord::Base
  belongs_to :question

  validates :content, :presence => true
  validates :question_id, :presence => true

end
