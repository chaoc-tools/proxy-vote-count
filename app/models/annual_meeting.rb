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
end
