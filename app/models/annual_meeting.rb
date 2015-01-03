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
end
