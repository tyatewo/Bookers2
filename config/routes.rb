Rails.application.routes.draw do
  root to: 'homes#top'
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

  resources :books, onry: [:index, :show, :edit]
  resources :users, only: [:show, :edit, :update]

end
