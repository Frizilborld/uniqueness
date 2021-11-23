Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'test_upload', to: "pages#test_upload", as: :test_upload #methode create dans le controller artwork
  get '/dashboard', to: 'dashboard#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show, :new, :create] do
    resources :artwork_prices, only: [:create]
    resources :upvotes, only: [:create]
  end
end
