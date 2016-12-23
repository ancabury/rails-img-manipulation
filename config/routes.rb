Rails.application.routes.draw do
  root to: 'home#index'

  get :images, to: 'image#index'
  post :images, to: 'image#create'
end
