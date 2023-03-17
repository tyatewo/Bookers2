Rails.application.routes.draw do
  get 'user/index'
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
  devise_for :users
  #get 'homes/top'
  #get 'homes/about'
  #get 'users/show'
  #get 'users/edit'
  #get 'books/new'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #get 'homes/top'

  resources :books, onry: [:new, :create, :index, :show, :edit, :destroy]
  resources :users, only: [:show, :edit, :update]

end
