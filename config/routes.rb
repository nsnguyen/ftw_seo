Rails.application.routes.draw do
  resources :question_audios
  resources :questions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    get "welcome/index"  
    root to: "welcome#index" 
end
