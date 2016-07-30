Rails.application.routes.draw do
  resources :submissions
  root 'submissions#new'

  get "log_in" => "sessions#new", as: "log_in"
  get "log_out" => "sessions#destroy", as: "log_out"
  
  get "submissions/:id/rubric" => "submissions#rubric", as: "submission_rubric"
  resources :sessions
end
