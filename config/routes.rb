Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"

  resources :restaurants do
    resources :reviews, only: %i[new create index]
    collection do
      get :top
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: %i[edit update show destroy]

end
