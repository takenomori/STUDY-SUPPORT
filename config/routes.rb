Rails.application.routes.draw do
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
