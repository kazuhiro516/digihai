Rails.application.routes.draw do
  devise_for :users,controllers: { registrations: 'registrations' }
  root 'posts#index'
  get 'static_pages/about'
  get 'static_pages/terms'
  resources :users, only: %i(index show)
  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
    resources :likes,  only: %i(create destroy)
  end
end
