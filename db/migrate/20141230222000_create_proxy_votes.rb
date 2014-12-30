class CreateProxyVotes < ActiveRecord::Migration
  def change
    create_table :proxy_votes do |t|
      t.integer :year
      t.integer :count
      t.references :building, index: true

      t.timestamps
    end
  end
end
