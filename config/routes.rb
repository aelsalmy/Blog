Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments
  end


  root "posts#index"

  get '/comment',to:'comment#index'

  post "/comment", to: "comment#create"

  # Defines the root path route ("/")
  # root "articles#index"
end
