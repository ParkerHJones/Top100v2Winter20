Rails.application.routes.draw do
  root 'billboards#index'

  resources :artists 
  resources :songs
end
