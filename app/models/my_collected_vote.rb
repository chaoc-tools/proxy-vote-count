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
end
