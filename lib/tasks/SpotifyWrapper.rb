require 'httparty'

class SpotifyWrapper
  BASE_URL = "https://tunes-takeout-api.herokuapp.com/"

  def self.find_album(music_id)
    album = RSpotify::Album.find(music_id)
  end

  def self.find_artist(music_id)
    album = RSpotify::Artist.find(music_id)
    # HTTParty.get(BASE_URL + "v1/suggestions/search?query=" + keyword).parsed_response
  end

  def self.find_track(music_id)
    album = RSpotify::Track.find(music_id)
    # HTTParty.get(BASE_URL + "v1/suggestions/search?query=" + keyword).parsed_response
  end
end
