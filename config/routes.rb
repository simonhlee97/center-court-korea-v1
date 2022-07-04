Rails.application.routes.draw do
  root to: "main#index"
  get "about", to: "about#index", as: :about
  get "news", to: "news#index", as: :news
  get "courts", to: "courts#index", as: :courts
  get "clubs", to: "clubs#index", as: :clubs
  get "shops", to: "shops#index", as: :shops

  get "profile", to: "profile#index", as: :profile


  # Auth Routes
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "register#new"
  post "sign_up", to: "register#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy"

end
