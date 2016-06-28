Rails.application.routes.draw do
  get 'test', to: 'static_pages#test', as: 'test'
  root 'static_pages#home'
end
