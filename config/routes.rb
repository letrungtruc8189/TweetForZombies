Rails.application.routes.draw do
  # get 'users/new'

  # get 'users/index'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/create'

  # get 'users/update'

  # get 'users/destroy'

  resources :rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
