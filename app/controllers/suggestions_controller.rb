class SuggestionsController < ApplicationController

  def index
  end

  def show
    @results = TunesTakeoutWrapper.search(params[:keyword])
  end
end
