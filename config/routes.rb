Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'restaurants#home'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'restaurants', to: 'restaurants#create'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end
