Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/terms'
end
