Rails.application.routes.draw do
  post "likes/:food_id/fcreate" => "likes#fcreate"
  get "likes/:food_id/fcreate" => "likes#fcreate"
  post "likes/:sanitary_id/screate" => "likes#screate"
  get "likes/:sanitary_id/screate" => "likes#screate"
  post "likes/:household_id/hcreate" => "likes#hcreate"
  get "likes/:household_id/hcreate" => "likes#hcreate"
  post "likes/:post_id/create" => "users#show"
  get "likes/:post_id/create" => "users#show"
  post "likes/:post_id/destroy" => "users#show"
  get "likes/:post_id/destroy" => "users#show"
  post "likes/:food_id/fdestroy" => "likes#fdestroy"
  get "likes/:food_id/fdestroy" => "likes#fdestroy"
  post "likes/:sanitary_id/sdestroy" => "likes#sdestroy"
  get "likes/:sanitary_id/sdestroy" => "likes#sdestroy"
  post "likes/:household_id/hdestroy" => "likes#hdestroy"
  get "likes/:household_id/hdestroy" => "likes#hdestroy"
  post "users/:id/update" => "users#update"
  get "users/:id/update" => "users#update"
  get "logout" => "users#logout"
  post "login" => "users#login"
  get "login" => "users#login_form"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  get "signup" => "users#new"
  post "posts/create" => "posts#create"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id/destroy" => "posts#destroy"
  get "/" => "home#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


end
