Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboard#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show, :new, :create] do
    collection do
      get :debug_score
    end

    resources :artwork_prices, only: [:create]
    resources :upvotes, only: [:create]
  end
end
