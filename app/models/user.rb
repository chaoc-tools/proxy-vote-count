# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  is_shareholder :boolean
#  first_name     :string(255)
#  middle_initial :string(255)
#  last_name      :string(255)
#  nickname       :string(255)
#  building_id    :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class User < ActiveRecord::Base
  belongs_to :building
end
