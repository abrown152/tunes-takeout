class SuggestionsController < ApplicationController

  def index
    results = TunesTakeoutWrapper.top_twenty
    @results = results["suggestions"]
  end

  def search
    @search_results = TunesTakeoutWrapper.search(params[:q])["suggestions"]
  end

  def show
    # shows individual pairing info
  end

  def favorites
    @favorites = TunesTakeoutWrapper.favorites
  end

  def unfavorite
  end

  def favorites
    # shows all suggestions favorited by the signed-in User
  end

end
