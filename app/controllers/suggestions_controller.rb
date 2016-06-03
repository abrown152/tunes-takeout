class SuggestionsController < ApplicationController

  def index
    results = TunesTakeoutWrapper.top_twenty
    @results = results["suggestions"]
  end

  def search
    @search_results = TunesTakeoutWrapper.search(params[:q])["suggestions"]
  end
end
