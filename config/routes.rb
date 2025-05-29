Rails.application.routes.draw do

  get 'home/top'
  get 'home/about' => 'homes#about', as: "about"
  devise_for :users
  root to: "homes#top"

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
