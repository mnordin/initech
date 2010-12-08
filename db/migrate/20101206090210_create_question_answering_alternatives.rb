class CreateQuestionAnsweringAlternatives < ActiveRecord::Migration
  def self.up
    create_table :question_answering_alternatives do |t|
      t.text :content
      t.integer :question_id

      t.timestamps
    end
  end
  
  # Testdata
   Question_Answering_Alternative.create :question_id => 1, :content => "shubru"
#  QuestionAnsweringAlternative.create :content => "10 Ton", :question_id => 1
#  QuestionAnsweringAlternative.create :content => "En siffra tagen ur luften", :question_id => 1

#  QuestionAnsweringAlternative.create :content => "Nej", :question_id => 3
#  QuestionAnsweringAlternative.create :content => "Nepp", :question_id => 3
#  QuestionAnsweringAlternative.create :content => "Noppeligen", :question_id => 3

#  QuestionAnsweringAlternative.create :content => "Rosa", :question_id => 4
#  QuestionAnsweringAlternative.create :content => "Rosrosa", :question_id => 4
#  QuestionAnsweringAlternative.create :content => "Grisrosa", :question_id => 4 
#  QuestionAnsweringAlternative.create :content => "Barbierosa", :question_id => 4
#  QuestionAnsweringAlternative.create :content => "Laxrosa", :question_id => 4
#  QuestionAnsweringAlternative.create :content => "Insidan-av-munnen-rosa", :question_id => 4 

#  QuestionAnsweringAlternative.create :content => "Kritsvart", :question_id => 5
#  QuestionAnsweringAlternative.create :content => "Illsvart", :question_id => 5
#  QuestionAnsweringAlternative.create :content => "Kolvitt", :question_id => 5

  def self.down
    drop_table :question_answering_alternatives
  end
end
