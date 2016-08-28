Rails.application.routes.draw do

  resources :artists do
    resources :songs
  end
  
  root 'artits#index'

end
