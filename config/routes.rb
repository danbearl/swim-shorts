Rails.application.routes.draw do
  resources :submissions
  root 'submissions#new'

  get "log_in" => "sessions#new", as: "log_in"
  get "log_out" => "sessions#destroy", as: "log_out"
  
  resources :submissions
  resources :sessions
end
