Rails.application.routes.draw do
  root "main#index"
  get "/articles", to: "articles#index"

  get "about-us", to: "about#index", as: :about
  # get "about", to: "about#index"
  get "sign_us", to: "registrations#new"
  post "sign_us", to: "registrations#create"
end
