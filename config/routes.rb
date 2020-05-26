Rails.application.routes.draw do
  # get 'calenders/index'
  # get 'calenders/new'
  # get 'calenders/show'
  # get 'calenders/edit'
  # get 'textbooks/index'
  # get 'textbooks/new'
  # get 'textbooks/show'
  # get 'textbooks/edit'
  # get 'study_times/index'
  # get 'study_times/new'
  # get 'study_times/show'
  # get 'study_times/edit'
  # get 'users/top'
  # get 'users/edit'
  # get 'users/show'

  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations',
    passwords: 'devise/passwords'
  }

  root 'users#top'
  resources :users, only: [:edit, :show, :update, :destroy]


  resources :calenders
  resources :textbooks
  resources :study_times


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
