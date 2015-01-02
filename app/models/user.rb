# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  is_shareholder   :boolean
#  first_name       :string(255)
#  middle_initial   :string(255)
#  last_name        :string(255)
#  nickname         :string(255)
#  building_id      :integer
#  created_at       :datetime
#  updated_at       :datetime
#  provider         :string(255)
#  uid              :string(255)
#  name             :string(255)
#  oauth_token      :string(255)
#  oauth_expires_at :datetime
#  email            :string(255)
#

class User < ActiveRecord::Base
  belongs_to :building

  def self.from_omniauth(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
  
end
