class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :heading
      t.datetime :send_date
      t.datetime :deadline

      t.timestamps
    end

    # Testdata
    Survey.create :heading => "Utvardering av hur bra Viktor ar"
    Survey.create :heading => "Avancerade hackingteknologier 3"
    Survey.create :heading => "Grundlaggande glasstillverkningskurs"
    Survey.create :heading => "Utvardering av klassrum 304"
  end

  def self.down
    drop_table :surveys
  end
end
