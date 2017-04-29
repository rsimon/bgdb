Rails.application.routes.draw do

  root :to => 'landing_page#index'

  resources :games
  resources :authors
  resources :publishers
  resources :images

end
