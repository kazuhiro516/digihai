Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root 'private_business_users#index'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/terms'

  resources :users, only: [:index, :show]
  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resources :photos, only: [:create]
    resources :likes,  only: [:create, :destroy]
  end
  resources :private_business_users, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
end
