class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :description
      t.text :background
      t.integer :survey_id
      t.string :answer_type

      t.timestamps
    end

    # Testdata
    Question.create :description => "Hur manga bultar finns det i olandsbron", :background => "Jamen du vet vad tror eller vem var det som fragade egentligen det ar vad jag undrar just nu. Eller?", :survey_id => 1, :answer_type => "radiobuttonlist"
    Question.create :description => "Varfor?", :survey_id => 1, :answer_type => "textarea"
    Question.create :description => "Ar det verkligen kul att det kors", :background => "Det ar ju nagot Viktor sager mest hela tiden.. Men ar det egentligen sa forbannat kul att det kors - tycker du?", :survey_id => 1, :answer_type => "radiobuttonlist"

    Question.create :description => "Vilka farger ar det pa luft?", :survey_id => 2, :answer_type=> "checkboxlist"
    Question.create :description => "Vilken farg ar det INTE pa luft?", :survey_id => 2, :answer_type=> "radiobuttonlist"

    Question.create :description => "Skriv nagot kul", :survey_id => 3, :answer_type => "textarea"

    Question.create :description => "Vad anser du generellt sett om saker?", :survey_id => 4, :answer_type=> "textarea"
    Question.create :description => "En fraga med bakgrund till kan ju vara kul, eller?", :background => "BAKGRUnd..", :survey_id => 4, :answer_type=> "scale"

  end

  def self.down
    drop_table :questions
  end
end
