Rails.application.routes.draw do
  get 'tasks/new'
  get 'tasks/show'
  get 'tasks/index'
  get 'tasks/edit'

    root 'home#index'
    resources :groups
    resources :tasks
    resources :users
	resources :sessions,only: [:destroy]
    get 'signup', to: 'users#new', as: :signup
    get 'login', to: 'sessions#new', as: :login
    get 'logout', to: 'sessions#destroy', as: :logout
    post 'login', to: 'sessions#create' 
end
