Rails.application.routes.draw do

  get 'overviews/index'

  resources :artists
  resources :songs

  root 'overviews#index'

  post 'order_by_created_at' => 'overviews#order_by_created_at'
  post 'order_by_name' => 'overviews#order_by_name'

  post 'remove_all' => 'artists#remove_all'

end
