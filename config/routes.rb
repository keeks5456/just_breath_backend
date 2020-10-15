Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :blogs
    resources :exercises
    resources :journal_entries
    resources :users

    post "/login", to: "auth#create"
    get '/profile', to: 'users#profile'
    post '/currentUser', to: 'auth#currentUser'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  end
end
