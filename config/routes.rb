Rails.application.routes.draw do
  get 'upload', to: "resumes#new"
  get 'uploads', to: "resumes#AllvideoData"
  resources :resumes, only: [:index, :new, :create, :destroy]
  root "pages#home"

  get "users", to: "users#showAll"
  get "users/:id", to: "users#showUser"
  post "user", to: "users#addInfo"
  put "users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"

  get "videos", to: "videos#showAll"
  get "videos/:id", to: "videos#showVid"
  post "video", to: "videos#addInfo"
  put "videos/:id", to: "videos#update"
  delete "videos/:id", to: "videos#destroy"
end
