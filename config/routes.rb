Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root to: 'welcome#index'
  get 'articles/new'
  get 'welcome/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end