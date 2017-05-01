Rails.application.routes.draw do

  root :to => 'application#index'

  resources :games
  resources :authors
  resources :publishers

end
