Rails.application.routes.draw do

  get 'overviews/index'

  resources :artists
  resources :songs

  root 'overviews#index'

end
