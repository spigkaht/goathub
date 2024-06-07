Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "pages#home"
  devise_for :users
  resources :goats do
    resources :offers, only: [:new, :create, :update]
    resources :reviews, only: [:new, :create]
  end
  get '/mygoats', to: 'pages#goats', as: 'my_goats'
  get '/mygoats2', to: 'pages#goats2', as: 'my_goats2'
  get '/utez', to: 'pages#utez', as: 'utez'
end
