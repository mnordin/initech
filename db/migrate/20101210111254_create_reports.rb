class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.integer :survey_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
