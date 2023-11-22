Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :update, :destroy] 
  resources :artworks, only: [:index, :show, :create, :update, :destroy] 
  # Defines the root path route ("/")
  # root "articles#index"
end
