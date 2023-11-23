Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
      resources :artworks, only: [:index]
  end
  resources :artworks, only: [:show, :create, :update, :destroy]
  resources :artwork_shares, only: [:create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
