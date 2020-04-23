Rails.application.routes.draw do
  resources :users
  resources :virus_checks
  resources :physicals
  resources :observations
end
