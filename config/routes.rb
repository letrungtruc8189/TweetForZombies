Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/signout', to: 'session#destroy'

  resources :rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
