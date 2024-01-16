Rails.application.routes.draw do

  resources :messages
  resources :rooms

  root 'rooms#index'

  mount ActionCable.server, at: '/cable'

end 
