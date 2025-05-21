Rails.application.routes.draw do

  get 'homes/top'
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top", as: "top"

  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
