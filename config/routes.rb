Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "users#show"
end
