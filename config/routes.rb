Rails.application.routes.draw do
  root to: "main#index"
  
  resources :proshops
  
  get "about", to: "about#index", as: :about
  get "news", to: "news#index", as: :news
  get "courts", to: "courts#index", as: :courts
  get "clubs", to: "clubs#index", as: :clubs
  get "shops", to: "shops#index", as: :shops

  get "events/amateur", to: "events#amateur", as: :amateur
  get "events/pro", to: "events#pro", as: :pro
  get "events/other", to: "events#other", as: :other

  get "profile", to: "profile#index", as: :profile
  
  # Auth Routes
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  get "sign_up", to: "register#new"
  post "sign_up", to: "register#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy"
end
