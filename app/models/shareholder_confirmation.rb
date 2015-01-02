# == Schema Information
#
# Table name: shareholder_confirmations
#
#  id           :integer          not null, primary key
#  sh_firstname :string(255)
#  sh_mi        :string(255)
#  sh_last_name :string(255)
#  sh_bldg      :integer
#  notes        :text
#  created_at   :datetime
#  updated_at   :datetime
#

class ShareholderConfirmation < ActiveRecord::Base
end
