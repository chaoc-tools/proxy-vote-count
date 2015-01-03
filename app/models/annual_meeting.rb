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
  
  # before_create :create_slug

  # def to_param
  #   slug
  # end

  # def create_slug
  #   self.slug = self.year.parameterize
  # end
end
