Rails.application.routes.draw do
  root to: 'static_pages#home'
  # get 'static_pages/home'

  get 'help' => 'static_pages#help'

  resources :posts

  devise_for :users
end
