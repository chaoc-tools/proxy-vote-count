class AddCountsToProxyVotes < ActiveRecord::Migration
  def change
    add_column :proxy_votes, :total_count, :integer
    add_column :proxy_votes, :building_count, :integer
    add_column :proxy_votes, :building_user_count, :integer
  end
end
