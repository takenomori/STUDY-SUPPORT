Rails.application.routes.draw do
  get 'home/front'
  # get 'users/top'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/top'
  # get 'users/edit'
  # get 'users/show'
  # get 'textbooks/index'
  # get 'textbooks/new'
  # get 'textbooks/show'
  # get 'textbooks/edit'
  devise_for :users

  root 'home#front'
  
  resources :users, only: [:edit, :show, :update, :destroy]

  resources :calenders
  resources :textbooks
  resources :study_times
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
