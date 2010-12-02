class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :heading
      t.datetime :send_date
      t.datetime :deadline

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
