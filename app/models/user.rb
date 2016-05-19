class User < ActiveRecord::Base
  validates :email, :name, :uid, :provider, presence: true

  def self.find_or_create_from_omniauth(auth_hash)
    unless auth = find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
      user = User.create :name => auth_hash["user_info"]["name"], :email => auth_hash["user_info"]["email"]
      auth = create :user => user, :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    end
    auth
  end
end
