# == Schema Information
#
# Table name: my_collected_votes
#
#  id              :integer          not null, primary key
#  votes_collected :integer
#  building_id     :integer
#  user_id         :integer
#  year            :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class MyCollectedVote < ActiveRecord::Base
  # belongs_to :user

   def self.update_total_vote_count
    #get count from all my_collected votes for all buildings
    total_count = 0

    self.all.each do |vote_collector|
      total_count += vote_collector.votes_collected
    end

    total_count
    
  end

  def self.vote_count_by_building

    # proxy_votes_by_building = [
    #   {:building_id => 1, :name => "365 Clinton", :building_votes => 22}
    # ]
    # currently ignoring year

    proxy_votes_by_building = []
    collected_votes = []
    buildings = Building.all
    collected_votes = self.all

    # create array of hashes with building id and name
    proxy_votes_by_building = buildings.collect{|building| {:building_id => building.id, :building_name => building.name}}

    # for each building
    proxy_votes_by_building.each do |building|

      building[:building_votes] = 0

      #find all vote collectors for this building
      vote_collectors = self.where :building_id => building[:building_id]

      vote_collectors.each do |vote_collector|
        building[:building_votes] += vote_collector.votes_collected
      end


      # sum up all votes from all vote collectors for each building 
      # building[:building_votes] = vote_collectors.collect{|vote_collector|{ vote_collector.votes_collected}}
    end

    proxy_votes_by_building

  end
end
