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
    HTTParty.get(BASE_URL + "/v1/users/:#{User.last.uid}/favorites").parsed_response
    # Returns a list of pair IDs from Charles' API
  end

  def self.favorite(pair_id)
    HTTParty.post(BASE_URL + "/v1/users/:#{User.last.uid}/favorites", body: {"suggestions": pair_id}.to_json)
    # Currently not saving the favorite in Charles' API, returns an empty array
    raise
    # work on this
  end
end
