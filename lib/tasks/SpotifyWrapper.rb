require 'httparty'
require 'rspotify'

class SpotifyWrapper
  BASE_URL = "https://tunes-takeout-api.herokuapp.com/"

  def self.hello
    artists = RSpotify::Artist.search('Arctic Monkeys')
    arctic_monkeys = artists.first
    arctic_monkeys.popularity
  end

  # def self.find_album(music_id)
  #   RSpotify::Album.find(music_id)
  # end
  #
  # def self.find_artist(music_id)
  #   RSpotify::Artist.find(music_id)
  #   # HTTParty.get(BASE_URL + "v1/suggestions/search?query=" + keyword).parsed_response
  # end
  #
  # def self.find_track(music_id)
  #   RSpotify::Track.find(music_id)
  #   # HTTParty.get(BASE_URL + "v1/suggestions/search?query=" + keyword).parsed_response
  # end
end
