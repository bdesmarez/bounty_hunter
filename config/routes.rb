Rails.application.routes.draw do

  resources :hunts
  root 'home#index'

end
