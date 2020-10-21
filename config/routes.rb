Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :blogs
    resources :exercises
    resources :journal_entries
    resources :users
    resources :user_favorite_exercises
    resources :user_favorite_blogs

    post "/login", to: "auth#create"
    get '/profile', to: 'users#profile'
    post '/currentUser', to: 'auth#currentUser'
    post '/user_favorite_exercises/:user_id/:exercise_id', to: 'user_favorite_exercises#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  end
end
