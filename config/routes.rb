Rails.application.routes.draw do

  get 'static_pages/home'

  root to: 'static_pages#home'

  get '/', to: 'static_pages#home'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/admin', to: 'admins#home'

  resources :partners
  resources :companies
end
