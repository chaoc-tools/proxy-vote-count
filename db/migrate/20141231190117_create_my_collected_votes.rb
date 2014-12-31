class CreateMyCollectedVotes < ActiveRecord::Migration
  def change
    create_table :my_collected_votes do |t|
      t.integer :votes_collected
      t.integer :building_id
      t.integer :user_id
      t.integer :year

      t.timestamps
    end
  end
end
