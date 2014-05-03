Rails.application.routes.draw do
  root to: 'geotime#new'
  post '/geotime' => 'geotime#create'
  get '/geotime/show' => 'geotime#show', as: 'geotimes'
end
