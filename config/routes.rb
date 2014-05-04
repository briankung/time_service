Rails.application.routes.draw do
  root to: 'geotime#new'
  resources :geotime, only: [:create, :show, :new]
end
