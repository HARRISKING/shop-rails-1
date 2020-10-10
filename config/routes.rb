Rails.application.routes.draw do
  get '/hello', to: 'first#hello'
  resources :users
end
