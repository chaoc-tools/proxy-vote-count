class CreateAnnualMeetings < ActiveRecord::Migration
  def change
    create_table :annual_meetings do |t|
      t.integer :year

      t.timestamps
    end
  end
end
