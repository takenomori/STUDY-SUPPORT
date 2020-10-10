Rails.application.routes.draw do
  root 'home#front'

  devise_for :users
  resources :users, only: %i[edit show update destroy] do
    collection do
      get 'top'
    end
  end

  resources :events
  resources :textbooks
  resources :study_times

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
