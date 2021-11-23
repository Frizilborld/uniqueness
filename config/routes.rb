Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'create', to: "controller#artwork", as: :create 
  get '/dashboard', to: 'dashboard#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show, :new, :create] do
    resources :artwork_prices, only: [:create]
    resources :upvotes, only: [:create]
  end
end
