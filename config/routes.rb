Rails.application.routes.draw do
  # Read all
  get '/restaurants', to: 'restaurants#index'

  # Create
  # 1. Provide the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # 2. Send the form
  post '/restaurants', to: 'restaurants#create'

  # Read one
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
end
