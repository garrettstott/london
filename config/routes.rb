Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#landing'

  devise_for :users

  get '/tracks', to: 'tracks#index'
  get '/tracks/search_name', to: 'tracks#search_name'
  get '/tracks/search_key_name', to: 'tracks#search_key_name'
  get '/tracks/search_bpm', to: 'tracks#search_bpm'

  get '/account', to: 'account#index'

  post '/tracks/search_name', to: 'tracks#search_name'
  post '/tracks/search_key_name', to: 'tracks#search_key_name'
  post '/tracks/search_bpm', to: 'tracks#search_bpm'
end
