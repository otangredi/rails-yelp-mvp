Rails.application.routes.draw do
  # Read all
  get '/restaurants', to: 'restaurants#index'

  # Read one
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
end
