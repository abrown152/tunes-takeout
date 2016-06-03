Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'suggestions#index'
  # get '/top_twenty' => 'sessions#top_twenty'


  get '/auth/spotify', :to => 'sessions#create'
  get '/auth/spotify/callback', :to => 'sessions#create'
  get '/logout', :to => 'sessions#destroy'
  resources :food, :music
  # Confirm these are the correct resources. What is this line even doing???????

  get '/top_twenty', :to => 'suggestions#index'
  post '/top_twenty/show', :to => 'suggestions#show', as: 'top_twenty_results'

  post '/v1/suggestions/search', :to => 'suggestions#search', as: 'search'

  get '/favorites', :to => 'suggestions#favorites', as: 'favorites'

  get '/show/:id', :to => 'suggestions#show', as: 'show'
end
