Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  # get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
