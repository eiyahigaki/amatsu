Rails.application.routes.draw do
  devise_for :agencies
  root to: "jobs#index"
  resources :jobs
  resources :agencies, only: :show
end