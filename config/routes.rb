Rails.application.routes.draw do
  root to: 'geotime#new'
  post '/geotime' => 'geotime#create'
end
