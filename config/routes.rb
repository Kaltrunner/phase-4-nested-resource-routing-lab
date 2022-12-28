Rails.application.routes.draw do
  resources :items, only: [:index, :create]
  resources :users, only: [:show]
end
