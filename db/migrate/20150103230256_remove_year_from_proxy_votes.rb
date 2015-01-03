class RemoveYearFromProxyVotes < ActiveRecord::Migration
  def change
    remove_column :proxy_votes, :year
  end
end
