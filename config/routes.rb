Rails.application.routes.draw do

  get 'overviews/index'

  resources :artists do
    resources :songs
  end

  root 'artists#index'

end
