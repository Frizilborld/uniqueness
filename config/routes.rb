Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'test_upload', to: "pages#test_upload", as: :test_upload
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
