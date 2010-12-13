class CreateSurveyQuestionResults < ActiveRecord::Migration
  def self.up
    create_table :survey_question_results do |t|
      t.integer :report_id
      t.integer :question_id
      t.boolean :graph
      t.boolean :raw_data
      t.text :type_of_graph

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_question_results
  end
end
