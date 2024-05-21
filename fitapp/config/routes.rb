Rails.application.routes.draw do
  devise_for :users
  resources :workouts
  resources :runs
  get 'pages/index'
  get 'pages/portfolio'
  get 'pages/contact'
  get 'pages/extra'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#index"
  
end
