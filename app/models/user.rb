class User < ActiveRecord::Base
  validates :email, :name, :uid, :provider, presence: true

  def initialize
    @favorites = []
  end

  def self.find_or_create_from_omniauth(auth_hash)
    # Find or create a user
    user = self.find_by(uid: auth_hash["uid"], provider: auth_hash["provider"])
    if user
      return user
    else
      user = User.new
      user.uid = auth_hash["uid"]
      user.provider = auth_hash["provider"]
      user.name = auth_hash["info"]["name"]
      user.email = auth_hash["info"]["email"]

      if user.save
        return user
      else
        return nil
      end
    end
  end

  def add_favorite(pair_id)
    @favorites << pair_id
  end

  def unfavorite(id)
    @favorites.each do |pair|
      if pair["id"] == id
        # remove the pair ID from the array here
      end
    end
  end

end
