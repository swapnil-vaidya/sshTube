Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  get "users/:id", to: "users#showAll"
  post "users/:id", to: "users#addInfo"
  put "users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"
  get "videos/:id", to: "videos#showAll"
  post "videos/:id", to: "videos#addInfo"
  put "videos/:id", to: "videos#update"
  delete "videos/:id", to: "videos#destroy"
end
