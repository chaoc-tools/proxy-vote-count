# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  campus     :string(255)
#

class Building < ActiveRecord::Base
  # has_many :users
end
