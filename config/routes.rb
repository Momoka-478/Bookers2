Rails.application.routes.draw do

  get 'homes/top'
  devise_for :users

  resources :books, only: [:new, :index, :show]
  resources :users, only: [:show, :edit]
root to: "homes#top"
end
