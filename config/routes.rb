Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :blogs
    resources :exercises
    resources :journal_entries
    resource :users

    # get "/login", to: "auth#login"
    post "/login", to: "auth#create"
    get '/profile', to: 'users#profile'

  #  get "/user_is_authed", to: "auth#user_is_authed"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  end
end
