class SuggestionsController < ApplicationController


  # def show
  #   @results = TunesTakeoutWrapper.search(params[:keyword])
  # end

  # def index
  #   @results = get_suggestions
  # end

  def index
    results = TunesTakeoutWrapper.top_twenty
    @results = results["suggestions"]
    # results["suggestions"].map do |suggestion_id|
    #   suggestion = TunesTakeoutWrapper.suggestion_info(suggestion_id)["suggestion"]
    #   logger.info suggestion
    #
    #   {
    #     music: get_music(suggestion),
    #     # food: get_food(suggestion),
    #   }
    # end
  end

  # def get_music(suggestion)
  #   case suggestion["music_type"]
  #   when "artist"
  #     RSpotify::Artist.find(suggestion["music_id"])
  #   when "track"
  #     RSpotify::Track.find(suggestion["music_id"])
  #   when "album"
  #     RSpotify::Album.find(suggestion["music_id"])
  #   end
  # end

  # def get_food(suggestion)
  #   "food"
  # end

end
