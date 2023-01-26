Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/tweets" => "tweets#index"
  post "/tweets" => "tweets#create"
  get "/tweets/:id" => "tweets#show"
end
