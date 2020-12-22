Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/terms'
  get '/users/:id', to: 'users#show', as: 'user'
end
