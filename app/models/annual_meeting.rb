# == Schema Information
#
# Table name: annual_meetings
#
#  id         :integer          not null, primary key
#  year       :integer
#  created_at :datetime
#  updated_at :datetime
#

class AnnualMeeting < ActiveRecord::Base
  validates_uniqueness_of :year
  validates_length_of :year, :minimum => 4, :maximum => 4, :allow_blank => false

  has_many :proxy_votes

   def self.update_total_vote_count
    #get count from all my_collected votes for all buildings
    total_count = 0

    MyCollectedVote.all.each do |vote_collector|
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
    collected_votes = MyCollectedVote.all

    # create array of hashes with building id and name
    proxy_votes_by_building = buildings.collect{|building| {:building_id => building.id, :building_name => building.name}}

    # for each building
    proxy_votes_by_building.each do |building|

      building[:building_votes] = 0

      #find all vote collectors for this building
      vote_collectors = MyCollectedVote.where :building_id => building[:building_id]

      vote_collectors.each do |vote_collector|
        building[:building_votes] += vote_collector.votes_collected
      end


      # sum up all votes from all vote collectors for each building 
      # building[:building_votes] = vote_collectors.collect{|vote_collector|{ vote_collector.votes_collected}}
    end

    proxy_votes_by_building

  end

  
  # before_create :create_slug

  # def to_param
  #   slug
  # end

  # def create_slug
  #   self.slug = self.year.parameterize
  # end
end
