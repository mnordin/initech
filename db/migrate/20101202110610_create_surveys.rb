class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :heading
      t.datetime :send_date
      t.datetime :deadline
      t.string :status
      t.string :description
      t.string :random_identifier

      t.timestamps
    end

    # Testdata. Since
    Survey.create :heading => "test1:Utvardering av hur bra Viktor ar", :status => "draft", :random_identifier => "test1"
    Survey.create :heading => "test2:Avancerade hackingteknologier 3", :status => "draft", :random_identifier => "test2"

    Survey.create :heading => "test3:Grundlaggande glasstillverkningskurs", :status => "scheduled", :random_identifier => "test3"

    Survey.create :heading => "test4:Utvardering av klassrum 304", :status => "active", :random_identifier => "test4"

    Survey.create :heading => "test5:OMG Jatte stangd utvardering", :status => "closed", :random_identifier => "test5"

  end

  def self.down
    drop_table :surveys
  end
end
