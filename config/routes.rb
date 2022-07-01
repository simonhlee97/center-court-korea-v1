Rails.application.routes.draw do
  root to: "main#index"
  get "about", to: "about#index", as: :about

  get "sign_up", to: "register#new"
  post "sign_up", to: "register#create"
  delete "logout", to: "sessions#destroy"

end
