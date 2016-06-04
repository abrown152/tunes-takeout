class SuggestionsController < ApplicationController

  def index
    results = TunesTakeoutWrapper.top_twenty
    @results = results["suggestions"]
  end

  def search
    @search_results = TunesTakeoutWrapper.search(params[:q])["suggestions"]
  end

  def show

  end

  def favorites
    @favorites = TunesTakeoutWrapper.favorites
    # shows all suggestions favorited by the signed-in User
  end

  def unfavorite
  end

  def favorite
    TunesTakeoutWrapper.favorite(params[:id])
  end

end
