Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :shared_urls, only: [:show]

  get ':id', to: "shared_urls#show"

  namespace :admin do
    resources :shared_urls

    root "shared_urls#index"
  end
end
