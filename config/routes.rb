Rails.application.routes.draw do
  resources :hours
  resources :schedulers
  resources :clients
  devise_for :admins
  resources :courts
  get "welcome/index"
  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
