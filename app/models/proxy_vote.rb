# == Schema Information
#
# Table name: proxy_votes
#
#  id                  :integer          not null, primary key
#  year                :integer
#  count               :integer
#  building_id         :integer
#  created_at          :datetime
#  updated_at          :datetime
#  total_count         :integer
#  building_count      :integer
#  building_user_count :integer
#


class ProxyVote < ActiveRecord::Base
  belongs_to :building  #not sure if this is correct or necessary

  def self.update_total_vote_count
    #get count from all my_collected votes for all buildings
    total_count = 0

    MyCollectedVote.all.each do |vote_collector|
      total_count += vote_collector.votes_collected
    end

    total_count
    
  end

  def update_building_vote_count
    
  end


end
