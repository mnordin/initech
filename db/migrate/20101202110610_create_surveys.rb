class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :heading
      t.datetime :send_date
      t.datetime :deadline
      t.string :status
      t.string :description

      t.timestamps
    end

    # Testdata
    Survey.create :heading => "Utvardering av hur bra Viktor ar", :status => "draft"
    Survey.create :heading => "Avancerade hackingteknologier 3", :status => "draft"
    Survey.create :heading => "Grundlaggande glasstillverkningskurs", :status => "scheduled"
    Survey.create :heading => "Utvardering av klassrum 304", :status => "active"
    Survey.create :heading => "OMG Jatte stangd utvardering", :status => "closed"
  end

  def self.down
    drop_table :surveys
  end
end
