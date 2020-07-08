Rails.application.routes.draw do
  root 'home#front'

  devise_for :users

  resources :events

  resources :users, only: [:edit, :show, :update, :destroy] do
    collection do
      get 'top'
    end
  end

  resources :textbooks
  # , only: [:edit, :index, :new, :show, :create, :update, :destroy]
  
  resources :study_times
  # , only: [:edit, :index, :new, :show, :create, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
