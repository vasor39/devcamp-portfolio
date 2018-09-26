Rails.application.routes.draw do
  resources :topics, only: [:show, :index]

  get 'topics/index'
  get 'topics/show'
  resources :comments
  devise_for :users, path: '', path_names: {
    sign_in: 'login', sign_up: 'register', sign_out: 'logout'
  }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  # get 'pages/home'
  get 'angular-items', to: 'portfolios#angular'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
