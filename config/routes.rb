Rails.application.routes.draw do
  resources :trailers
  resources :users
  resources :reviews, param: :tt_id
  # resouces :reviews, only: [:index]
  # , only:[:create, :index, :get]
  resources :movies, only: [:index, :show] do
    resources :reviews
  end
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
