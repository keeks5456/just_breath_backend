Rails.application.routes.draw do
  resources :blogs
  resources :exercises
  resources :journal_entries
  resource :users, only: [:create]

   post "/login", to: "auth#login"
   get '/profile', to: 'users#profile'

  #  get "/user_is_authed", to: "auth#user_is_authed"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
