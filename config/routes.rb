Rails.application.routes.draw do
  resources :reccomendations
  resources :interviews
  resources :applications
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end