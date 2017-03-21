class User < ActiveRecord::Base
  attr_accessible :uid, :provider, :name # see text for explanation
  def self.create_with_omniauth(auth)
    User.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end
end