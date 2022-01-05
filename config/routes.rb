Rails.application.routes.draw do
  resources :reviews
  resources :movies, only: [:index, :show]
  resources :users
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
