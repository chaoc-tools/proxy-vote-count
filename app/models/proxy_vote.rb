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

  # == Schema Information
#
# Table name: proxy_votes
#
#  id          :integer          not null, primary key
#  year        :integer
#  count       :integer
#  building_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class ProxyVote < ActiveRecord::Base
  belongs_to :building
end
