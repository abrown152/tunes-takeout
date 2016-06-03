require 'httparty'

class TunesTakeoutWrapper
  BASE_URL = "https://tunes-takeout-api.herokuapp.com/"

  def self.search(keyword)
    HTTParty.get(BASE_URL + "v1/suggestions/search?query=" + keyword).parsed_response
  end

  def self.top_twenty
    HTTParty.get(BASE_URL + "v1/suggestions/top").parsed_response
  end

  def self.suggestion_info(id)
    HTTParty.get(BASE_URL + "/v1/suggestions/" + id).parsed_response
  end

  def self.favorites
    HTTParty.get(BASE_URL + "/v1/users/:#{RSpotify::User.find(current_user.name).id}/favorites").parsed_response
    # Returns a list of pair IDs from Charles' API
  end

end
