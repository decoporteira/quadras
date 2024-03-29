Rails.application.routes.draw do
  resources :court_types
  resources :values
  resources :schedulers
  resources :clients
  devise_for :admins
  resources :courts
  get "welcome/index"
  post "/", to: "welcome#index"
  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
