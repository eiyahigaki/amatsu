Rails.application.routes.draw do
  devise_for :agencies
  root to: "jobs#index"
  resources :jobs
end