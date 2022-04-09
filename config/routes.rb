Rails.application.routes.draw do
  resources :question_audios
  resources :questions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    get "/",  to: "welcome#index"
    get "/vn",  to: "welcome_vn#index"
    get "/citizen", to: "questions#index"

end
