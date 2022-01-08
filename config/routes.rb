Rails.application.routes.draw do
  resources :users
  # , only:[:create, :index, :get]
  resources :movies, only: [:index, :show] do
    resources :reviews, only:[:create]
  end
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
