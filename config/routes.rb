Rails.application.routes.draw do

  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
  devise_for :users


  resources :books, onry: [:new, :create, :index, :show, :edit, :destroy]
  resources :users, only: [:show, :edit, :update, :index]

end
